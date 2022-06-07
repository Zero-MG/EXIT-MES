package erp.exit.mapper;

import java.util.List;

import erp.exit.domain.InfoItemVO;
import erp.exit.domain.LotVO;
import erp.exit.domain.ProductVO;

public interface LotMapper {
	
	//글 등록하기
	public void register(LotVO vo);
	
	//검사결과 검색내역 리스트
	public List<LotVO> searchList();
	
	//팝업창 3주차 자재코드 검색해서 보여주기
	public List<ProductVO> autoCode(String code);
	
	//팝업창 3주차 자재코드로 자재명 가져오기
	public List<ProductVO> autoCodeName(String code);
	
	//item별 검사항목 리스트
	public List<InfoItemVO> itemList(String code);
	

	
}
