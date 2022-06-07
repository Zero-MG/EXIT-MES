package erp.exit.service;

import java.util.List;

import erp.exit.domain.ItemDTO;
import erp.exit.domain.ItemVO;
import erp.exit.domain.ProductVO;

public interface InspectionitemService {
	
	public void register(ItemVO vo);
	
	public List<ItemVO> list();

	public ItemVO itemSearch(String inspectionItem);
	public List<ItemVO> itemSearch2(String inspectionItem);
	
	public void delUpdateDD(String inspectionItem); //폐기여부 'Y' & 삭제날짜 update
	public void delBackUpData(String inspectionItem); //데이터 삭제테이블에 백업
	public void delComplete(String inspectionItem); //본 데이터 삭제
	
	public void modify(ItemVO vo);
	
	public List<ItemDTO> selectSearchList(String type, String keyword);
	
	//등록 시 검사항목 중복확인
	public int regcheck(String inspectionItem);
}
