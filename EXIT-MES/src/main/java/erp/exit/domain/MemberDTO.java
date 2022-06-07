package erp.exit.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberDTO {
	
	private String userId;
	private String userName;
	private String userEmail;
	@DateTimeFormat(pattern = "YYYY-MM-DD")
	private Date regDate;

}
