package co.jk.prj.category.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;

public class BreadCategoryForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<ProductVO>();
		
		products = dao.productSelectList();
		request.setAttribute("products", products);
		
	
		return "category/breadCategoryForm.tiles";
	}

}
