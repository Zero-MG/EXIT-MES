package erp.exit.mapper;

import org.apache.ibatis.annotations.Param;

import erp.exit.domain.MemberDTO;
import erp.exit.domain.MemberVO;

public interface StartMapper {
	
	//로그인 하기
	public Integer login(@Param("userId") String userId, 
			@Param("userPass") String userPass);
	
	//회원가입 하기
	public void create(MemberVO vo);
	
	//세션데이터 저장
	public MemberDTO sessionData(String userId);
	
	//아이디 중복검사 ajax
	public int idCheck(String userId);
	
	//회원비번가져오기
	public String checkpwd(String userId);
}
