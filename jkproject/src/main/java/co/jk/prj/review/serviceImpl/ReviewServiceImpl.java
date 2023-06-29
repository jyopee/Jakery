package co.jk.prj.review.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.common.DataSource;
import co.jk.prj.qna.service.QnaVO;
import co.jk.prj.review.map.ReviewMapper;
import co.jk.prj.review.service.ReviewService;
import co.jk.prj.review.service.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	//db연결
		SqlSession sqlSession = DataSource.getInstance().openSession(true);
		ReviewMapper map = sqlSession.getMapper(ReviewMapper.class);
		@Override
		public List<ReviewVO> reviewSelectList(ReviewVO vo) {
			// TODO Auto-generated method stub
			return map.reviewSelectList(vo);
		}
		@Override
		public ReviewVO reviewSelect(ReviewVO vo) {
			// 조회수 증가
			reviewHitUpdate(vo.getPrReviewId());
			return map.reviewSelect(vo);
		}
		@Override
		public int reviewInsert(ReviewVO vo) {
			// TODO Auto-generated method stub
			return map.reviewInsert(vo);
		}
		@Override
		public int reviewUpdate(ReviewVO vo) {
			// TODO Auto-generated method stub
			return map.reviewUpdate(vo);
		}
		@Override
		public int reviewDelete(ReviewVO vo) {
			// TODO Auto-generated method stub
			return map.reviewDelete(vo);
		}
		@Override
		public int reviewIdUpdate(int id) {
			// TODO Auto-generated method stub
			return map.reviewIdUpdate(id);
		}
		@Override
		public void reviewHitUpdate(int id) {
			// TODO Auto-generated method stub
			map.reviewHitUpdate(id);
			
		}
		@Override
		public List<ReviewVO> reviewSearchList(String key, String val,int pageNum, int amount) {
			// TODO Auto-generated method stub
			return map.reviewSearchList(key, val, pageNum, amount);
		}
		@Override
		public List<ReviewVO> getList(int pageNum, int amount) {
			// TODO Auto-generated method stub
			return map.getList(pageNum, amount);
		}
		@Override
		public List<ReviewVO> getTotal() {
			// TODO Auto-generated method stub
			return map.getTotal();
		}
		@Override
		public List<ReviewVO> reviewOneSearchList(int id, String key, String val) {
			// TODO Auto-generated method stub
			return map.reviewOneSearchList(id, key, val);
		}
		@Override
		public int getSearchTotal(String key, String val) {
			// TODO Auto-generated method stub
			return map.getSearchTotal(key, val);
		}

		
	}


