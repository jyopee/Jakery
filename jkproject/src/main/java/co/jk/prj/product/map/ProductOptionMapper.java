package co.jk.prj.product.map;

import java.util.List;

import co.jk.prj.product.service.productOptionVO;

public interface ProductOptionMapper {

	List<productOptionVO> optionSelectList();
		
	productOptionVO optionSelect(productOptionVO vo);
}
