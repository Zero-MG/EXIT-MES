package erp.exit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import erp.exit.domain.ProductDTO;
import erp.exit.domain.ProductVO;

public interface InformationMapper {
	
	//글등록 하기
	public void register(ProductVO vo);
	
	//전체 글목록 가져오기
	public List<ProductVO> list();
	
	//코드 검색해서 데이터 가져오기
	public ProductVO codeSearch(String code); //검색데이터
	public List<ProductVO> codeSearch2(String code); //데이터검토
	
	//자재 확인해서 삭제하기
	public void delUpdateDD(String code); //폐기여부 'Y' & 삭제날짜 update
	public void delBackUpData(String code); //데이터 삭제테이블에 백업
	public void delComplete(String code); //본데이터 삭제
	
	//수정
	public void modify(ProductVO vo);

	// 쿼리+ajax 검색기능
	public List<ProductDTO> selectSearchList(@Param("type") String type, 
			@Param("keyword") String keyword);
	
	// ajax 등록 코드 중복검사
	public int regcheck(String code);
	
}
