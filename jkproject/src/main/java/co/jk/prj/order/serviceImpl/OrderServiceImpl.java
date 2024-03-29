package co.jk.prj.order.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import co.jk.prj.common.DataSource;
import co.jk.prj.order.map.OrderMapper;
import co.jk.prj.order.service.OrderService;
import co.jk.prj.order.service.OrderVO;


public class OrderServiceImpl implements OrderService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private OrderMapper map = sqlSession.getMapper(OrderMapper.class);
	@Override
	public List<OrderVO> orderSelectList() {
		// TODO Auto-generated method stub
		return map.orderSelectList();
	}


	@Override
	public int orderInsert(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderInsert(vo);
	}

	@Override
	public int orderDelete(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderDelete(vo);
	}

	@Override
	public int orderUpdate(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderUpdate(vo);
	}


	@Override
	public List<OrderVO> orderSelect(OrderVO vo) {
		// TODO Auto-generated method stub
		return map.orderSelect(vo);
	}

}
