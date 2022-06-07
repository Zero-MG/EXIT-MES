package erp.exit.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import erp.exit.domain.ItemDTO;
import erp.exit.domain.ItemVO;
import erp.exit.domain.ProductVO;
import erp.exit.mapper.InspectionitemMapper;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class InspectionitemServiceImpl implements InspectionitemService {
	
	InspectionitemMapper mapper;
	
	@Override
	public void register(ItemVO vo) {
		mapper.register(vo);
	}

	@Override
	public List<ItemVO> list() {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		List<ItemVO> list = mapper.list();
		for (ItemVO data : list) {
			data.setDf_creationDate(df.format(data.getCreationDate()));
			data.setDf_modifiedDate(df.format(data.getModifiedDate()));
			data.setDf_delDate(df.format(data.getDelDate()));
		}
		
		return list;
	}

	@Override
	public List<ItemDTO> selectSearchList(String type, String keyword) {
		
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		List<ItemDTO> list = mapper.selectSearchList(type, keyword);
		for (ItemDTO data : list) {
			data.setDf_creationDate(df.format(data.getCreationDate()));
			data.setDf_modifiedDate(df.format(data.getModifiedDate()));
			data.setDf_delDate(df.format(data.getDelDate()));
		}
		
		return list;
	}

	@Override
	public ItemVO itemSearch(String inspectionItem) {
		return mapper.itemSearch(inspectionItem);
	}

	@Override
	public List<ItemVO> itemSearch2(String inspectionItem) {
		return mapper.itemSearch2(inspectionItem);
	}

	// 삭제&백업 서비스
	@Override
	public void delUpdateDD(String inspectionItem) {
		mapper.delUpdateDD(inspectionItem);
	}
	
	@Override
	public void delBackUpData(String inspectionItem) {
		mapper.delBackUpData(inspectionItem);
	}
	
	@Override
	public void delComplete(String inspectionItem) {
		mapper.delComplete(inspectionItem);
	}

	@Override
	public void modify(ItemVO vo) {
		mapper.modify(vo);
	}
	// 삭제&백업 서비스 끝

	@Override
	public int regcheck(String inspectionItem) {
		return mapper.regcheck(inspectionItem);
	}


}
