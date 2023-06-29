package co.jk.prj.product.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.product.map.ProductMapper;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;


public class ProductServiceImpl implements ProductService {
	//db연결
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	ProductMapper map = sqlSession.getMapper(ProductMapper.class);
	
	
	@Override
	public List<ProductVO> productSelectList() {
		// TODO Auto-generated method stub
		return map.productSelectList();
	}

	@Override
	public ProductVO productSelect(ProductVO vo) {
		// TODO Auto-generated method stub
		return map.productSelect(vo);
	}
	
	@Override
	public List<ProductVO> productSelectEvent() {
		// TODO Auto-generated method stub
		return map.productSelectEvent();
	}
}
