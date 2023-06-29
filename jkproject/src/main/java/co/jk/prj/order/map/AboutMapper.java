package co.jk.prj.order.map;

import java.util.List;

import co.jk.prj.order.service.AboutVO;


public interface AboutMapper {

	List<AboutVO> aboutSelectList();

	AboutVO aboutSelect(AboutVO vo);

	int aboutInsert(AboutVO vo);

	int aboutDelete(AboutVO vo);

	int aboutUpdate(AboutVO vo);
	
}
