package co.jk.prj.category.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.common.Command;
import co.jk.prj.img.service.ImgService;
import co.jk.prj.img.service.ImgVO;
import co.jk.prj.img.serviceImpl.ImgServiceImpl;
import co.jk.prj.product.service.ProductService;
import co.jk.prj.product.service.ProductVO;
import co.jk.prj.product.serviceImpl.ProductServiceImpl;

public class CakeCategoryForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> list = new ArrayList<ProductVO>();
		
		list = dao.productSelectList();
		request.setAttribute("products", list);
		System.out.println("CakeCategoryFrom의 product list의 값: "+ list);
		
		return "category/cakeCategoryForm.tiles";
	}

}
