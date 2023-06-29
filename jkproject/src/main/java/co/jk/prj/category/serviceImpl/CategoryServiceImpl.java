package co.jk.prj.category.serviceImpl;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import co.jk.prj.category.map.CategoryMapper;
import co.jk.prj.category.service.CategoryService;
import co.jk.prj.category.service.CategoryVO;
import co.jk.prj.common.DataSource;




public class CategoryServiceImpl implements CategoryService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CategoryMapper map = sqlSession.getMapper(CategoryMapper.class);
	//@Override
//	public List<CategoryVO> categorySelectList() {
//		// TODO Auto-generated method stub
//		return map.categorySelectList();
	}



//}
