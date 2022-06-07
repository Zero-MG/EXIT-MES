package erp.exit.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import erp.exit.domain.ProductDTO;
import erp.exit.domain.ProductVO;
import erp.exit.service.InformationService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/information/*")
public class InformationController {
	
	public InformationService service;
	
	// 검사자재 등록&조회 페이지 실행
	@GetMapping("/main")
	public String registerMainGet(ProductVO vo, Model md) {
		log.info("Information Product_M 페이지 접속");
		
		md.addAttribute("list", service.list());
		
		return "/information/ProductMain";
	}
	
	// 자재 등록 팝업실행
	@GetMapping("/product/reg")
	public String registerGet(ProductVO vo, Model md) {
		log.info("Information 자재 등록창 띄움 ..");
		
		return "/information/ProductReg";
	}
	
	// 자재 등록기능
	@PostMapping("/product/reg")
	public String registerPost(ProductVO vo, Model md) {
		log.info("Information 자재 등록중..");
		service.register(vo);
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/information/ProductReg";
	}
	
	// 자재 삭제폼 팝업실행
	@GetMapping("/product/del")
	public String deleteGet(ProductVO vo, Model md) {
		log.info("Information 자재 삭제창 띄움 ..");
		
		return "/information/ProductDel";
	}
	
	// 자재 삭제기능
	@PostMapping("/product/del")
	public String deletePost(ProductVO vo, Model md) {
		log.info("Information 자재 삭제중..");
		
		service.delBackUpData(vo.getCode());
		service.delComplete(vo.getCode());
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/information/ProductDel";
	}

	// 자재 제품코드 조회
	@PostMapping("/product/searchcode")
	public String searchcodePost(ProductVO vo, Model md) {
		log.info("Information 자재 조회중..");
		
		ProductVO delVO = service.codeSearch(vo.getCode());
		List<ProductVO> delVO2 = service.codeSearch2(vo.getCode());
		
		if(delVO2.size() == 0) {
			md.addAttribute("ServiceCheck", "none");
		}else {
			md.addAttribute("vo", delVO);
		}
		
		return "/information/ProductDel";
	}
	
	// 자재 수정 팝업실행
	@GetMapping("/product/mod")
	public String modifyGet(ProductVO vo, Model md) {
		log.info("Information 자재 수정창 띄움 ..");
		
		return "/information/ProductMod";
	}
	
	// 자재 수정기능
	@PostMapping("/product/mod")
	public String modifyPost(ProductVO vo, Model md) {
		log.info("Information 자재 수정중..");
		
		service.modify(vo);
		
		md.addAttribute("ServiceCheck", "success");
		
		return "/information/ProductMod";
	}
	
	// 자재수정 코드 조회
	@PostMapping("/product/modsearchcode")
	public String modSearchCodePost(ProductVO vo, Model md) {
		log.info("Information 자재 조회중..");
		
		ProductVO delVO = service.codeSearch(vo.getCode());
		List<ProductVO> delVO2 = service.codeSearch2(vo.getCode());
		
		if(delVO2.size() == 0) {
			md.addAttribute("ServiceCheck", "none");
		}else {
			md.addAttribute("ServiceCheck", "searchOK");
			md.addAttribute("vo", delVO);
		}
		
		return "/information/ProductMod";
	}
	
	// 테이블 Ajax 검색 조회
	@GetMapping("/product/getSearchList")
	@ResponseBody
	public List<ProductDTO> getSearchList(ProductDTO dto, Model md) {
		log.info("Information 테이블 Ajax검색 진행");
		
		List<ProductDTO> searchList = service.selectSearchList(dto.getType(), dto.getKeyword());
		
		return searchList;
	}
	
	// 테이블 Ajax 등록 중복검사
	@ResponseBody
	@GetMapping("/product/regcheck")
	public int regcheck(ProductVO vo) {
		log.info("Ajax ID 등록중 중복체크");
		int result = service.regcheck(vo.getCode());
		return result;
	}
	
}


//리다이렉트 메모
//return "redirect:/material/list";
//Re Commit Test
