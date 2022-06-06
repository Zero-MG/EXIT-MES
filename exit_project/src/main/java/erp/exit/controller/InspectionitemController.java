package erp.exit.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.exit.domain.ItemDTO;
import erp.exit.domain.ItemVO;
import erp.exit.service.InspectionitemService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/inspection/*")
public class InspectionitemController {
	
	public InspectionitemService service;
	
	// 검사항목등록 메인화면
	@GetMapping("/main")
	public String ItemMain(Model md) {
		log.info("Item Main 실행");
		
		md.addAttribute("list", service.list());
		log.info(service.list());
		
		return "/inspectionitem/ItemMain";
	}
	
	// 등록 팝업실행
	@GetMapping("/item/reg")
	public String registerGet(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 등록창 띄움 ..");
		
		return "/inspectionitem/ItemReg";
	}
	
	// 등록기능
	@PostMapping("/item/reg")
	public String registerPost(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 등록중..");
		
		log.info("등록 데이터 검토 : "+vo);
		
		service.register(vo);
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/inspectionitem/ItemReg";
	}
	
	// 삭제 팝업실행
	@GetMapping("/item/del")
	public String deleteGet(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 삭제창 띄움 ..");
		
		return "/inspectionitem/ItemDel";
	}
	
	// 삭제기능
	@PostMapping("/item/del")
	public String deletePost(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 삭제중..");
		
		service.delUpdateDD(vo.getInspectionItem());
		service.delBackUpData(vo.getInspectionItem());
		service.delComplete(vo.getInspectionItem());
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/inspectionitem/ItemDel";
	}

	// 삭제폼 조회
	@PostMapping("/item/delsearch")
	public String searchcodePost(ItemVO vo, Model md) {
		log.info("inspectionitem 삭제 항목 조회중..");
		
		ItemVO delVO = service.itemSearch(vo.getInspectionItem());
		List<ItemVO> delVO2 = service.itemSearch2(vo.getInspectionItem());
		
		if(delVO2.size() == 0) {
			md.addAttribute("ServiceCheck", "none");
		}else {
			md.addAttribute("vo", delVO);
		}
		
		return "/inspectionitem/ItemDel";
	}
	
	// 팝업실행
	@GetMapping("/item/mod")
	public String modifyGet(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 수정창 띄움 ..");
		
		return "/inspectionitem/ItemMod";
	}
	
	// 수정기능
	@PostMapping("/item/mod")
	public String modifyPost(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 수정중..");
		
		service.modify(vo);
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/inspectionitem/ItemMod";
	}
	
	// 수정조회
	@PostMapping("/item/itemsearch")
	public String searchItemPost(ItemVO vo, Model md) {
		log.info("inspectionitem 항목 조회중..");
		
		ItemVO delVO = service.itemSearch(vo.getInspectionItem());
		List<ItemVO> delVO2 = service.itemSearch2(vo.getInspectionItem());
		
		if(delVO2.size() == 0) {
			md.addAttribute("ServiceCheck", "none");
		}else {
			md.addAttribute("ServiceCheck", "searchOK");
			md.addAttribute("vo", delVO);
		}
		
		return "/inspectionitem/ItemMod";
	}
	
	
	/* /item/mod */
	// 테이블 Ajax 검색 조회
	@GetMapping("/item/getSearchList")
	@ResponseBody
	public List<ItemDTO> getSearchList(ItemDTO dto, Model md) {
		log.info("inspectionitem 테이블 Ajax검색 진행");
		
		List<ItemDTO> searchList = service.selectSearchList(dto.getType(), dto.getKeyword());
		
		return searchList;
	}
	
	
	// /item/regcheck
	@ResponseBody
	@GetMapping("/item/regcheck")
	public int regcheck(ItemVO vo) {
		log.info("inspectionitem Ajax 등록 중복확인");
		int result = service.regcheck(vo.getInspectionItem());
		return result;
	}
	
	
}
