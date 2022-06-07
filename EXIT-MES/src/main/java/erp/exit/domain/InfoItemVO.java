package erp.exit.domain;

import lombok.Data;

@Data
public class InfoItemVO {
	
	private long rn; //넘버링
	private long idx; //시퀀스 고유값
	private String code; //자재코드
	private String inspectionItem; //검사항목  inspectioniteminspectionitem
	private String inspectionItemName; //검사항목명
	private String qua; //정성정량 
	private int sampleWater; //시료수 
	private int ac; //AC값
	private int re; //RE값
	private float usl; //USL
	private float sl; //SL
	private float lsl; //LSL
	private float ucl; //UCL
	private float cl; //CL
	private float lcl; //LCL
	private String unit; //단위
	private String note; //비고

}
