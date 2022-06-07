package erp.exit.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import erp.exit.domain.InfoItemDTO;
import erp.exit.domain.InfoItemVO;
import erp.exit.domain.ItemVO;
import erp.exit.service.InfoItemService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@RequestMapping("/infoinspectitem/*")
@Controller
public class InfoItemController {

	public InfoItemService service;

	// 자재코드 검사자동완성
	@ResponseBody
	@GetMapping(value = "/search", produces = "application/text; charset=UTF-8")
	public String search(InfoItemVO vo) {
		Gson js = new Gson(); // json으로 변환하기위해 사용한 함수
		List<InfoItemVO> result = service.search(vo.getCode());

		log.info("자재코드 받아온값" + vo.getCode());
		log.info("json : " + js.toJson(result));

		return js.toJson(result);
	}

	// 검사항목 자동완성
	@ResponseBody
	@GetMapping(value = "/search2", produces = "application/text; charset=UTF-8")
	public String search2(InfoItemVO vo) {
		Gson js = new Gson(); // json으로 변환하기위해 사용한 함수
		List<InfoItemVO> result = service.search2(vo.getCode(), vo.getInspectionItem());

		log.info("자재코드 받아온값: " + vo.getCode());
		log.info("검사항목 받아온값 : " + vo.getInspectionItem());
		log.info("json : " + js.toJson(result));

		return js.toJson(result);
	}

	// 검사자재 등록&조회 페이지 실행
	@GetMapping("/main")
	public String registerMainGet(InfoItemVO vo, Model md) {
		log.info("InfoItem infoitem_M 페이지 접속");
		md.addAttribute("list", service.list());
		return "/infoinspectitem/InfoItemMain";
	}

	// 자재 등록 팝업실행
	@GetMapping("/reg")
	public String registerGet(InfoItemVO vo, Model md) {
		log.info("InfoItem 자재 등록창 띄움 ..");
		return "/infoinspectitem/InfoItemReg";
	}

	//삭제 팝업실행
	@GetMapping("/del")
	public String deleteGet(InfoItemVO vo, Model md) {
		log.info("infoitem 자재 삭제창 띄움 ..");

		return "/infoinspectitem/InfoItemDel";
	}

	//삭제 조회 기능
	@ResponseBody
	@PostMapping("/searchcode")
	public InfoItemVO searchcodePost(InfoItemVO vo, Model md) {
		log.info("infoitem 자재 조회중..");
		
		InfoItemVO delVO = service.codeSearch(vo.getCode(), vo.getInspectionItem());
		
		return delVO;
	}
	
	//백업 및 삭제 기능
	@PostMapping("/del")
	public String deletePost(InfoItemVO vo, Model md) {
		log.info("삭제중...");
		
		service.delBackUpData(vo.getCode(), vo.getInspectionItem());
		service.delComplete(vo.getCode(), vo.getInspectionItem());
		
		md.addAttribute("ServiceCheck","success");
		
		return "/infoinspectitem/InfoItemDel";
	}
	

	// 자재수정 코드& 검사항목 조회
		@ResponseBody
		@PostMapping(value = "/modsearchcode", produces = "applicaion/text; charset=UTF-8")
		public String modSearchCodePost(InfoItemVO vo, Model md) {
			log.info("수정infoitem 자재 조회중..");
			log.info(service.codeSearch(vo.getCode(),vo.getInspectionItem()));
			Gson js = new Gson();
			InfoItemVO modVO = service.codeSearch(vo.getCode(), vo.getInspectionItem());
			log.info("서비스실행을 위한 VO : "+modVO);
			int modVO2 = service.codeSearch2(vo.getCode(), vo.getInspectionItem());
			log.info("서비스사이즈: "+modVO2);
			
			if(modVO2 == 1) {
				return js.toJson(modVO);
			}else if (modVO2 ==0) {
				return js.toJson("없어");
			}else {
				return js.toJson("error");
			}
			
		}
		
		
		// 자재 수정 팝업실행
		@GetMapping("/mod")
		public String modifyGet(InfoItemVO vo, Model md) {
			log.info("infoitem 자재 수정창 띄움 ..");

			return "/infoinspectitem/InfoItemMod";
		}

		// 자재 수정기능
		@PostMapping("/mod")
		public String modifyPost(InfoItemVO vo, Model md) {
			log.info("infoitem 자재 수정중..");
			log.info(vo);

			service.modify(vo);

			md.addAttribute("ServiceCheck", "success");
			md.addAttribute("SeviceCheck", "fail");

			return "/infoinspectitem/InfoItemMod";
		}

	// 테이블 Ajax 검색 조회
	@GetMapping("/getSearchList")
	@ResponseBody
	public List<InfoItemDTO> getSearchList(InfoItemDTO dto, Model md) {
		log.info("infoitem 테이블 Ajax검색 진행");

		List<InfoItemDTO> searchList = service.selectSearchList(dto.getType(), dto.getKeyword());

		return searchList;
	}
	
	// 자재 등록기능
	@PostMapping("/reg")
	public String registerPost(InfoItemVO vo, Model md) {
		log.info("Information 자재 등록중..");
		
		int overlapCheck = service.regCheck(vo.getCode(), vo.getInspectionItem()).size();
		log.info("기존 데이터 중복검사 사이즈: "+overlapCheck);
		int dataCheck = service.regDataCheck(vo.getCode(), vo.getInspectionItem()).size();
		log.info("code, item 데이터 사이즈: "+dataCheck);
		
		if(overlapCheck > 0) {
			md.addAttribute("ServiceCheck", "overlap");
		}else if(dataCheck == 0){
			md.addAttribute("ServiceCheck", "false");
		}else if(overlapCheck == 0 || dataCheck == 1) {
			service.register(vo);
			md.addAttribute("ServiceCheck", "success");
		}else {
			md.addAttribute("ServiceCheck", "error");
		}
		
		return "/infoinspectitem/InfoItemReg";
	}
	
	// 1주차 데이터 Code 가져오기. [자재코드 검사자동완성]
	@ResponseBody
	@GetMapping(value = "/infosearch", produces="text/plain;charset=UTF-8")
	public String infosearch(InfoItemVO vo) {
		Gson js = new Gson();
		List<InfoItemVO> code = service.regInfoSearch(vo.getCode());
		return js.toJson(code);
	}

	// 2주차 데이터 Item 가져오기. [자재코드 검사자동완성]
	@ResponseBody
	@GetMapping(value = "/itemsearch", produces="text/plain;charset=UTF-8")
	public String itemsearch(InfoItemVO vo) {
		Gson js = new Gson();
		List<InfoItemVO> item = service.regItemSearch(vo.getInspectionItem());
		return js.toJson(item);
	}
	
	// 해당하는 2주차 데이터 ItemVO 가져오기
	@ResponseBody
	@GetMapping(value = "/regsearchcodeitem", produces = "application/text; charset=UTF-8")
	public String regSearchCodeItem(String code, String inspectionItem) {
		// GetMapping에 produces 써준 이유는 json 타입으로 보낼 때 인코딩방식 설정을 해주기 위함.
		// 저렇게 안해주면 한글이 '?'로 다 깨져서 보내짐. [한글오류 해결]
		// 굳이 이렇게 하면서 까지 json으로 해준 이유는 return값을 String타입 으로 보낼 수 있기 때문!!
		Gson js = new Gson();
		ItemVO vo = service.regItemData(inspectionItem);
		int dataCheck = service.regDataCheck(code, inspectionItem).size();
		log.info("사이즈: "+dataCheck);
		
		if(dataCheck == 1) {
			return js.toJson(vo);
		}else if(dataCheck == 0) {
			return js.toJson("false");
		}else {
			return js.toJson("error");
		}
		
	}
	
}
