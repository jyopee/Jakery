package co.jk.prj.cart.map;

import java.util.List;

import co.jk.prj.cart.service.CartVO;

public interface CartMapper {
	List<CartVO> cartSelectList();

	List<CartVO> cartSelect(CartVO vo);

	List<CartVO> cartSelectf(String memberId);
	
	int cartInsert(CartVO vo);

	int cartDelete(CartVO vo);

	int cartUpdate(CartVO vo);

	CartVO cartSumView();

	int cartDupUpdate(CartVO vo);

}
