package erp.exit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import erp.exit.domain.InfoItemVO;
import erp.exit.domain.LotVO;
import erp.exit.domain.ProductVO;
import erp.exit.mapper.LotMapper;
import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class LotServiceImpl implements LotService {
	
	LotMapper mapper;
	
	//등록
	@Override
	public void register(LotVO vo) {
		mapper.register(vo);
	}
	
	//검색내역 목록
	@Override
	public List<LotVO> searchList() {
		return mapper.searchList();
	}
	
	//자재코드 자동완성
	@Override
	public List<ProductVO> autoCode(String code) {
		return mapper.autoCode(code);
	}
	
	//자재코드로 자재명 가져오기
	@Override
	public List<ProductVO> autoCodeName(String code) {
		return mapper.autoCodeName(code);
	}
	
	//item별 검사항목 리스트
	@Override
	public List<InfoItemVO> itemList(String code) {
		return mapper.itemList(code);
	}

	
	
}
