package co.jk.prj.cart.service;

import java.util.List;

import co.jk.prj.product.service.ProductVO;

public interface CartService {
	List<CartVO> cartSelectList();

	List<CartVO> cartSelect(CartVO vo);

	List<CartVO> cartSelectf(String memberId);

	int cartDupUpdate(CartVO vo);

	int cartDelete(CartVO vo);

	int cartUpdate(CartVO vo);

	int cartInsert(CartVO vo);

	CartVO cartSumView();

}
