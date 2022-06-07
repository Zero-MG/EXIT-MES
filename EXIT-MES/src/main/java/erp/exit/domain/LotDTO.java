package erp.exit.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Data
public class LotDTO {
	
	private long rn; //넘버링
	private long idx; //시퀀스 고유값
	private int lot_no; //LOT_NO
	private int lot_size; //LOT_SIZE
	private String code; //자재코드
	private String codeName; //자재명
	private String pass_or_fail; //합불여부
	private String constructor; //생성자
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date creationDate; //생성일자
	private String note; //비고
	
	// 날짜 포맷 적용
	private String df_creationDate;
}
