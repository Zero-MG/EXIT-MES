package erp.exit.controller;

import javax.inject.Inject;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import erp.exit.domain.MemberDTO;
import erp.exit.domain.MemberVO;
import erp.exit.service.StartService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@SessionAttributes("sdto")
@Controller
@Log4j
@AllArgsConstructor
@RequestMapping("/account/*")
public class ExitController {
	
	
	@Inject
	BCryptPasswordEncoder pwdEncoder;
	
	public StartService	service;
	
	@GetMapping("/login")
	public String login(SessionStatus status) {
		log.info("로그인 화면");
		status.setComplete();//세션값 초기화
		return "/account/Login";
	}
	
	@PostMapping("/login")
	public String login(@ModelAttribute MemberDTO dto, MemberVO vo, Model md) {
		
		String dbPW = service.checkpwd(vo.getUserId()); //DB에서 가져온거
		String clientPW = vo.getUserPass(); //클라이언트가 입력한거
		
		int cnt = 0;
		if(pwdEncoder.matches(clientPW, dbPW)) {
			log.info("PW Success");
			cnt = 1;
		}else {
			log.info("PW Failure");
		}
		
		if(cnt==1) {
			dto = service.sessionData(vo.getUserId()); //로그인 ID를 받아와서 세션DTO에 저장
			md.addAttribute("sdto", dto); //세션DTO를 'sdto'라는 이름으로 웹에 전달
			log.info("로그인 성공");
			return "redirect:/information/main";
		}else
			md.addAttribute("check", "fail");
			return "/account/Login";
	}
	
	@GetMapping("/create")
	public String create() {
		log.info("회원가입 화면");
		return "/account/Create";
	}
	
	@PostMapping("/create")
	public String createPost(MemberVO vo) {
		log.info("회원가입 진행중");
		log.info("create:"+vo);
		String inputPass = vo.getUserPass();
		String pwd = pwdEncoder.encode(inputPass);
		vo.setUserPass(pwd);
		service.create(vo);
		return "redirect:/account/login";
	}
	
	@ResponseBody
	@GetMapping("/idsearch")
	public int idsearch(MemberVO vo) {
		int ch = service.idCheck(vo.getUserId());
		return ch;
	}
	
}
