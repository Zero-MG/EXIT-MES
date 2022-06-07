package erp.exit.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductDTO {
	
	// 검색기능 DTO 필드
	private long rn;
	private String code;
	private String codeName;
	private String buyer;
	private String buyerName;
	private String purchasing;
	private String purchasingName;
	private String buyCompany;
	private String buyCompanyName;
	private String inspectperson;
	private long currentInventory;
	private long price;
	private char inspect;
	private char disuse;
	
	//검색필터
	private String type;
	private String keyword;
	
	//숫자 단위 표기형식
	private String df_currentInventory;
	private String df_price;
	
}
