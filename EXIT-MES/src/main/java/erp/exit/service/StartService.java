package erp.exit.service;

import erp.exit.domain.MemberDTO;
import erp.exit.domain.MemberVO;

public interface StartService {
	
	//로그인
	public Integer login(String userId, String userPass);
	
	//회원가입
	public void create(MemberVO vo);
	
	//세션정보
	public MemberDTO sessionData(String userId);
	
	//아이디 중복검사 ajax
	public int idCheck(String userId);
	
	//회원비번가져오기
	public String checkpwd(String userId);

}
