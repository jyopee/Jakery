package co.jk.prj.cart.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.jk.prj.cart.map.CartMapper;
import co.jk.prj.cart.service.CartService;
import co.jk.prj.cart.service.CartVO;

import co.jk.prj.common.DataSource;
import co.jk.prj.product.service.ProductVO;

public class CartServiceImpl implements CartService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private CartMapper map = sqlSession.getMapper(CartMapper.class);

	@Override
	public List<CartVO> cartSelectList() {
		// TODO Auto-generated method stub
		return map.cartSelectList();
	}

	@Override
	public List<CartVO> cartSelect(CartVO vo) {
		return map.cartSelect(vo);
	}

	@Override
	public int cartInsert(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartInsert(vo);
	}

	@Override
	public int cartDelete(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartDelete(vo);
	}

	@Override
	public int cartUpdate(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartUpdate(vo);
	}

	@Override
	public CartVO cartSumView() {
		// TODO Auto-generated method stub
		return map.cartSumView();
	}

	@Override
	public List<CartVO> cartSelectf(String memberId) {
		// TODO Auto-generated method stub
		return map.cartSelectf(memberId);
	}

	@Override
	public int cartDupUpdate(CartVO vo) {
		// TODO Auto-generated method stub
		return map.cartDupUpdate(vo);
	}

}
