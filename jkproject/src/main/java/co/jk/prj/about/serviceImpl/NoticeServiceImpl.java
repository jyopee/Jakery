package co.jk.prj.about.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.order.map.AboutMapper;
import co.jk.prj.order.service.AboutService;
import co.jk.prj.order.service.AboutVO;


public class NoticeServiceImpl implements AboutService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private AboutMapper map = sqlSession.getMapper(AboutMapper.class);
	@Override
	public List<AboutVO> aboutSelectList() {
		// TODO Auto-generated method stub
		return map.aboutSelectList();
	}

	@Override
	public AboutVO aboutSelect(AboutVO vo) {
		// TODO Auto-generated method stub
		return map.aboutSelect(vo);
	}

	@Override
	public int aboutInsert(AboutVO vo) {
		// TODO Auto-generated method stub
		return map.aboutInsert(vo);
	}

	@Override
	public int aboutDelete(AboutVO vo) {
		// TODO Auto-generated method stub
		return map.aboutDelete(vo);
	}

	@Override
	public int aboutUpdate(AboutVO vo) {
		// TODO Auto-generated method stub
		return map.aboutUpdate(vo);
	}

}
