package co.jk.prj.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.qna.map.CommentMapper;
import co.jk.prj.qna.service.CommentService;
import co.jk.prj.qna.service.CommentVO;

public class CommentServiceImpl implements CommentService {
	//db연결
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	CommentMapper map = sqlSession.getMapper(CommentMapper.class);
	
	@Override
	public int commentInsert(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.commentInsert(vo);
	}

	@Override
	public int commentUpdate(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.commentUpdate(vo);
	}

	@Override
	public int commnetDelete(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.commnetDelete(vo);
	}

	@Override
	public List<CommentVO> commentSelectList(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.commentSelectList(vo);
	}

	@Override
	public CommentVO commentSelect(CommentVO vo) {
		// TODO Auto-generated method stub
		return map.commentSelect(vo);
	}
}