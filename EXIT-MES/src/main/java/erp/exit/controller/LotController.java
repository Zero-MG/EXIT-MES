package erp.exit.controller;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import erp.exit.domain.InfoItemVO;
import erp.exit.domain.LotVO;
import erp.exit.domain.ProductVO;
import erp.exit.service.LotService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@AllArgsConstructor
@Log4j
@RequestMapping("/lot/*")
@Controller
public class LotController {
	
	public LotService service;

		// Lot 메인페이지 실행
		@GetMapping("/main")
		public String main(LotVO vo, Model md) {
			log.info("lot 메인 페이지 접속");
			md.addAttribute("searchList", service.searchList());
			return "/lot/LotMain";
		}
		
		//검색내역 팝업실행
		@GetMapping("/reg")
		public String regGet(LotVO vo) {
			log.info("lot 검사결과 입력창 띄움.. ");
			return "/lot/LotReg";
		}
		
		//lot별 검사결과 등록
		@PostMapping("/reg")
		public String regPost(LotVO vo, Model md) {
			log.info("Lot 자재등록중..");
			service.register(vo);
			md.addAttribute("ServiceCheck", "success");
			return "/lot/LotReg";
		}

		//자재코드 자동완성
		@ResponseBody
		@GetMapping(value = "/codesearch", produces="text/plain;charset=UTF-8")
		public String autoCode(ProductVO vo) {
			Gson js = new Gson();
			List<ProductVO> code = service.autoCode(vo.getCode());
			return js.toJson(code);
		}
		
		//자재코드를 사용해서 자재명 자동입력
		@ResponseBody
		@GetMapping(value = "/codenamesearch", produces="text/plain;charset=UTF-8")
		public String autoCodeName(ProductVO vo) {
			Gson js = new Gson();
			List<ProductVO> code = service.autoCodeName(vo.getCode());
			return js.toJson(code);
		}

		//item별 검사항목 리스트
		@ResponseBody
		@GetMapping("/itemlist")
		public List<InfoItemVO> item(String code) {
			log.info(code+" 출력준비중..");
			
			return service.itemList(code);
		}
		
	
}
