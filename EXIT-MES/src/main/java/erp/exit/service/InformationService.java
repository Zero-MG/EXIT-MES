package erp.exit.service;

import java.util.List;

import erp.exit.domain.ProductDTO;
import erp.exit.domain.ProductVO;

public interface InformationService {
	
	public void register(ProductVO vo);
	
	public List<ProductVO> list();
	
	public ProductVO codeSearch(String code);
	public List<ProductVO> codeSearch2(String code);
	
	public void delUpdateDD(String code); //폐기여부 'Y' & 삭제날짜 update
	public void delBackUpData(String code); //데이터 삭제테이블에 백업
	public void delComplete(String code); //본데이터 삭제
	
	public void modify(ProductVO vo);
	
	public List<ProductDTO> selectSearchList(String type, String keyword);
	
	// ajax 등록 코드 중복검사
	public int regcheck(String code);
	
}
