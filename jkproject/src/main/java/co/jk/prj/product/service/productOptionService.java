package co.jk.prj.product.service;

import java.util.List;

public interface productOptionService {
	//일단 select만
	List<productOptionVO> optionSelectList();
	
	productOptionVO optionSelect(productOptionVO vo);
}
