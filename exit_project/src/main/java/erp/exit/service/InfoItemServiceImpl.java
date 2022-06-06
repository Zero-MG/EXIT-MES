package erp.exit.service;

import java.util.List;

import org.springframework.stereotype.Service;

import erp.exit.domain.InfoItemDTO;
import erp.exit.domain.InfoItemVO;
import erp.exit.domain.ItemVO;
import erp.exit.mapper.InfoItemMapper;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class InfoItemServiceImpl implements InfoItemService{

	InfoItemMapper mapper;
	
	//등록
	@Override
	public void register(InfoItemVO vo) {
		mapper.register(vo);
	}
	
	//목록
	@Override
	public List<InfoItemVO> list() {
		return mapper.list();
	}
	
	//삭제 조회
	@Override
	public InfoItemVO codeSearch(String code, String inspectionItem) {
		return mapper.itemSearch(code,inspectionItem);
	}


	@Override
	public List<InfoItemDTO> selectSearchList(String type, String keyword) {
		return mapper.selectSearchList(type, keyword);
	}

	@Override
	public void delBackUpData(String code, String inspectionItem) {
		mapper.delBackUpData(code,inspectionItem);
	}

	@Override
	public void delComplete(String code, String inspectionItem) {
		mapper.delComplete(code,inspectionItem);
	}

	@Override
	public void modify(InfoItemVO vo) {
		mapper.modify(vo);
	}

	@Override
	public List<InfoItemVO> search(String code) {
		return mapper.search(code);
	}

	@Override
	public List<InfoItemVO> search2(String code,String inspectionItem) {
		return mapper.search2(code,inspectionItem);
	}

	
	// 등록기능 자동완성 [1주차 Code 가져오기]
	@Override
	public List<InfoItemVO> regInfoSearch(String code) {
		return mapper.regInfoSearch(code);
	}
	
	// 등록기능 자동완성 [2주차 Item 가져오기]
	@Override
	public List<InfoItemVO> regItemSearch(String inspectionItem) {
		return mapper.regItemSearch(inspectionItem);
	}

	@Override
	public ItemVO regItemData(String inspectionItem) {
		return mapper.regItemData(inspectionItem);
	}

	@Override
	public List<InfoItemVO> regCheck(String code, String inspectionItem) {
		return mapper.regCheck(code, inspectionItem);
	}

	@Override
	public List<InfoItemVO> regDataCheck(String code, String inspectionItem) {
		return mapper.regDataCheck(code, inspectionItem);
	}

	@Override
	public int codeSearch2(String code, String inspectionItem) {
		// TODO Auto-generated method stub
		return mapper.InfoitemSearch2(code, inspectionItem);
	}
	
}
