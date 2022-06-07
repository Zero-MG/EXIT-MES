package erp.exit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import erp.exit.domain.InfoItemDTO;
import erp.exit.domain.InfoItemVO;
import erp.exit.domain.ItemVO;

public interface InfoItemMapper {
	
	//글등록 하기
	public void register(InfoItemVO vo);
	
	//전체 글목록 가져오기
	public List<InfoItemVO> list();
	
	//검사항목 검색해서 데이터 가져오기
	public InfoItemVO itemSearch(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	public List<InfoItemVO> InfoitemSearch2(InfoItemVO vo);
	public int InfoitemSearch2(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	
	// 쿼리+ajax 검색기능
	public List<InfoItemDTO> selectSearchList(@Param("type") String type, 
			@Param("keyword") String keyword);	

	//삭제 자재코드 자동완성
	public List<InfoItemVO> search(String code);
	//삭제 검사항목 자동완성
	public List<InfoItemVO> search2(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	
	//데이터 삭제테이블에 백업
	public void delBackUpData(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	//본 데이터 삭제
	public void delComplete(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	
	//수정
	public void modify(InfoItemVO vo);	
	
	
	//등록전용 자재코드 자동완성
	public List<InfoItemVO> regInfoSearch(String code);
	//등록전용 검사항목 자동완성
	public List<InfoItemVO> regItemSearch(String inspectionItem);
	//등록전용 검사항목 자동완성
	public ItemVO regItemData(String inspectionItem);
	
	// code, item 중복검사
	public List<InfoItemVO> regCheck(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	// code, item이 실제 있는 data인지 검사
	public List<InfoItemVO> regDataCheck(@Param("code") String code,@Param("inspectionItem") String inspectionItem);
	

}
