package erp.exit.service;

import java.text.DecimalFormat;
import java.util.List;

import org.springframework.stereotype.Service;

import erp.exit.domain.ProductDTO;
import erp.exit.domain.ProductVO;
import erp.exit.mapper.InformationMapper;
import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class InformationServiceImpl implements InformationService {
	
	private InformationMapper mapper;

	@Override
	public void register(ProductVO vo) {
		mapper.register(vo);
	}

	@Override
	public List<ProductVO> list() {
		
		List<ProductVO> list = mapper.list();
		
		DecimalFormat df = new DecimalFormat("###,###");
		for (ProductVO data : list) {
			data.setDf_price(df.format(data.getPrice()));
			data.setDf_currentInventory(df.format(data.getCurrentInventory()));
		}
		
		return list;
	}
	
	@Override
	public ProductVO codeSearch(String code) {
		return mapper.codeSearch(code);
	}

	@Override
	public List<ProductVO> codeSearch2(String code) {
		return mapper.codeSearch2(code);
	}

	@Override
	public void delUpdateDD(String code) {
		mapper.delUpdateDD(code);
	}
	
	@Override
	public void delBackUpData(String code) {
		mapper.delBackUpData(code);
	}
	
	@Override
	public void delComplete(String code) {
		mapper.delComplete(code);
	}
	
	@Override
	public List<ProductDTO> selectSearchList(String type, String keyword) {
		
		List<ProductDTO> list = mapper.selectSearchList(type, keyword);
		
		DecimalFormat df = new DecimalFormat("###,###");
		for (ProductDTO data : list) {
			data.setDf_price(df.format(data.getPrice()));
			data.setDf_currentInventory(df.format(data.getCurrentInventory()));
		}
		
		return list;
	}

	@Override
	public void modify(ProductVO vo) {
		mapper.modify(vo);
	}

	@Override
	public int regcheck(String code) {
		return mapper.regcheck(code);
	}


}
