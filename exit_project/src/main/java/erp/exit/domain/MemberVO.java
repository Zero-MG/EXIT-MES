package erp.exit.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	private String userId;
	private String userPass;
	private String userDepart;
	private String userName;
	private String userEmail;
	private Date regDate;
	
}

