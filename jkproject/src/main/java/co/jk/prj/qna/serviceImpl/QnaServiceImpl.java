package co.jk.prj.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.qna.map.QnaMapper;
import co.jk.prj.qna.service.QnaService;
import co.jk.prj.qna.service.QnaVO;

public class QnaServiceImpl implements QnaService {
	//db연결
	SqlSession sqlSession = DataSource.getInstance().openSession(true);
	QnaMapper map = sqlSession.getMapper(QnaMapper.class);
	
	@Override
	public List<QnaVO> qnaSelectList(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaSelectList(vo);
	}
	@Override
	public QnaVO qnaSelect(QnaVO vo) {
		// 조회수 증가
		qnaHitUpdate(vo.getPrQnaId());
		return map.qnaSelect(vo);
	}
	@Override
	public int qnaInsert(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaInsert(vo);
	}
	@Override
	public int qnaUpdate(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaUpdate(vo);
	}
	@Override
	public int qnaDelete(QnaVO vo) {
		// TODO Auto-generated method stub
		return map.qnaDelete(vo);
	}
	@Override
	public void qnaHitUpdate(int id) {
		// TODO Auto-generated method stub
		map.qnaHitUpdate(id);
		
	}
	@Override
	public int qnaIdUpdate(int id) {
		// TODO Auto-generated method stub
		return map.qnaIdUpdate(id);
	}
	@Override
	public List<QnaVO> getList(int pageNum, int amount) {
		// TODO Auto-generated method stub
		return map.getList(pageNum, amount);
	}
	@Override
	public List<QnaVO> getTotal() {
		// TODO Auto-generated method stub
		return map.getTotal();
	}
	@Override
	public List<QnaVO> qnaSearchList(String key, String val, int pageNum, int amount) {
		// TODO Auto-generated method stub
		return map.qnaSearchList(key, val, pageNum, amount);
	}
	@Override
	public List<QnaVO> qnaOneSearchList(int id, String key, String val) {
		// TODO Auto-generated method stub
		return map.qnaOneSearchList(id, key, val);
	}
	@Override
	public int getSearchTotal(String key, String val) {
		// TODO Auto-generated method stub
		return map.getSearchTotal(key, val);
	}

	

}
