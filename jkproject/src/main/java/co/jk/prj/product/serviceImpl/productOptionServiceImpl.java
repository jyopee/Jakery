package co.jk.prj.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.product.map.ProductOptionMapper;
import co.jk.prj.product.service.productOptionService;
import co.jk.prj.product.service.productOptionVO;

public class productOptionServiceImpl implements productOptionService {
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductOptionMapper map = sqlSession.getMapper(ProductOptionMapper.class);
	
	
	@Override
	public List<productOptionVO> optionSelectList() {
		// TODO Auto-generated method stub
		return map.optionSelectList();
	}

	@Override
	public productOptionVO optionSelect(productOptionVO vo) {
		// TODO Auto-generated method stub
		return map.optionSelect(vo);
	}

}
