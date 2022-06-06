package erp.exit.domain;

import lombok.Data;

@Data
public class ProductVO {
	
	private long rn;
	private long idx;
	private String code;	//자재코드
	private String codeName;//자재명
	private String buyer;	//구매자
	private String buyerName;//구매자명
	private String purchasing;//구매부서
	private String purchasingName;//구매부서명
	private String buyCompany;//구매업체
	private String buyCompanyName;//구매업체명
	private String inspectperson;//수입검사자
	private int currentInventory;//현재고
	private long price;//구매단가
	private char inspect;//검사여부
	private char disuse;//폐기여부
	
	
	//숫자 단위 표기형식
	private String df_currentInventory;
	private String df_price;
	
}
