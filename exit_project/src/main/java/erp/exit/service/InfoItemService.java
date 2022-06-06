package erp.exit.service;

import java.util.List;

import erp.exit.domain.InfoItemDTO;
import erp.exit.domain.InfoItemVO;
import erp.exit.domain.ItemVO;
import erp.exit.domain.ProductVO;

public interface InfoItemService {
	
	//등록&리스트
	public void register(InfoItemVO vo);
	public List<InfoItemVO> list();
	
	//삭제 조회
	public InfoItemVO codeSearch(String code, String inspectionItem);
			
	//삭제
	public void delBackUpData(String code, String inspectionItem); //데이터 삭제테이블에 백업
	public void delComplete(String code, String inspectionItem); //본 데이터 삭제
	
	//수정
	public void modify(InfoItemVO vo);
	public int codeSearch2(String code, String inspectionItem); 

	//쿼리+ajax 검색기능
	public List<InfoItemDTO> selectSearchList(String type, String keyword);

	//자재코드 자동완성
	public List<InfoItemVO> search(String code);
	
	//검사항목 자동완성
	public List<InfoItemVO> search2(String code,String inspectionItem);
	
	
	//등록전용 자재코드 자동완성
	public List<InfoItemVO> regInfoSearch(String code);
	//등록전용 검사항목 자동완성
	public List<InfoItemVO> regItemSearch(String inspectionItem);
	//등록전용 검사항목 자동완성
	public ItemVO regItemData(String inspectionItem);
	
	// code, item 중복검사
	public List<InfoItemVO> regCheck(String code, String inspectionItem);
	// code, item이 실제 있는 data인지 검사
	public List<InfoItemVO> regDataCheck(String code, String inspectionItem);
	
}
