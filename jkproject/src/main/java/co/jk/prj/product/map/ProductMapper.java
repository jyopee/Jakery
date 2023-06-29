package co.jk.prj.product.map;

import java.util.List;

import co.jk.prj.product.service.ProductVO;

public interface ProductMapper {
	//상품 목록 출력(일단 최신순으로..)
	List<ProductVO> productSelectList();
	
	//상품 정보 단건 조회
	ProductVO productSelect(ProductVO vo);
	
	//이벤트 목록 출력(일단 최신순으로..)
			List<ProductVO> productSelectEvent();
}
