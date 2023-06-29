package co.jk.prj.img.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.img.map.ImgMapper;
import co.jk.prj.img.service.ImgService;
import co.jk.prj.img.service.ImgVO;



public class ImgServiceImpl implements ImgService {

	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ImgMapper map = sqlSession.getMapper(ImgMapper.class);
	@Override
	public List<ImgVO> ImgSelectList() {

		return map.ImgSelectList();
	}
	
}
