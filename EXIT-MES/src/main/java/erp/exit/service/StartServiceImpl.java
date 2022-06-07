package erp.exit.service;

import org.springframework.stereotype.Service;

import erp.exit.domain.MemberDTO;
import erp.exit.domain.MemberVO;
import erp.exit.mapper.StartMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class StartServiceImpl implements StartService {
	
	StartMapper mapper;

	@Override
	public Integer login(String userId, String userPass ) {
		int cnt = mapper.login(userId, userPass);
		return cnt;
	}

	@Override
	public void create(MemberVO vo) {
		mapper.create(vo);
	}

	@Override
	public MemberDTO sessionData(String userId) {
		return mapper.sessionData(userId);
	}

	@Override
	public int idCheck(String userId) {
		return mapper.idCheck(userId);
	}
	@Override
	public String checkpwd(String userId) {
		return mapper.checkpwd(userId);
		
		
	}
	
	
}
