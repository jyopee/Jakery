package co.jk.prj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.jk.prj.cart.command.AjaxCartDel;
import co.jk.prj.cart.command.AjaxCartList;
import co.jk.prj.cart.command.CartAdd;
import co.jk.prj.cart.command.CartPage;
import co.jk.prj.cart.command.CartPay;
import co.jk.prj.cart.command.CartUpdate;
import co.jk.prj.cart.command.Payright;
import co.jk.prj.category.command.BreadCategoryForm;
import co.jk.prj.category.command.CakeCategoryForm;
import co.jk.prj.category.command.ChocolateCategoryForm;
import co.jk.prj.category.command.CookieCategoryForm;
import co.jk.prj.category.command.EventCategoryForm;
import co.jk.prj.category.command.GiftSetCategoryForm;
import co.jk.prj.check.command.CheckForm;
import co.jk.prj.check.command.CheckOut;
import co.jk.prj.check.command.kakao;
import co.jk.prj.common.Command;
import co.jk.prj.common.Fileupload;
import co.jk.prj.contact.command.contact;
import co.jk.prj.main.MainCommand;
import co.jk.prj.member.command.AjaxMemberIdCheck;
import co.jk.prj.member.command.Contract;
import co.jk.prj.member.command.LoignPage;
import co.jk.prj.member.command.MemberDelete;
import co.jk.prj.member.command.MemberInfo;
import co.jk.prj.member.command.MemberJoin;
import co.jk.prj.member.command.MemberJoinForm;
import co.jk.prj.member.command.MemberLogin;
import co.jk.prj.member.command.MemberLogout;
import co.jk.prj.member.command.MemberPasswordCheck;
import co.jk.prj.member.command.MemberUpdate;
import co.jk.prj.member.command.MemberUpdateForm;
import co.jk.prj.mypage.MyPageForm;
import co.jk.prj.mypage.command.MyQnaPageList;
import co.jk.prj.mypage.command.MyReviewPageList;
import co.jk.prj.notice.command.NoticeDelete;
import co.jk.prj.notice.command.NoticeEdit;
import co.jk.prj.notice.command.NoticeEditForm;
import co.jk.prj.notice.command.NoticeInsert;
import co.jk.prj.notice.command.NoticeInsertForm;
import co.jk.prj.notice.command.NoticeListAjax;
import co.jk.prj.notice.command.NoticeQnaDelete;
import co.jk.prj.notice.command.NoticeQnaSelect;
import co.jk.prj.notice.command.NoticeQnaUpdate;
import co.jk.prj.notice.command.NoticeQnaUqdateForm;
import co.jk.prj.notice.command.NoticeReviewDelete;
import co.jk.prj.notice.command.NoticeReviewSelect;
import co.jk.prj.notice.command.NoticeReviewUqdate;
import co.jk.prj.notice.command.NoticeSelect;
import co.jk.prj.notice.command.QnaSearchPageList;
import co.jk.prj.notice.command.ReviewSearchPageList;
import co.jk.prj.notice.command.noticePage;
import co.jk.prj.notice.command.noticeReviewUqdateForm;
import co.jk.prj.order.command.AdminOrderList;
import co.jk.prj.order.command.AdminOrderListAjax;
import co.jk.prj.order.command.AdminOrderUpdate;
import co.jk.prj.order.command.OrderList;
import co.jk.prj.order.command.OrderListAjax;
import co.jk.prj.product.command.ProductSingle;
import co.jk.prj.qna.command.CommentInert;
import co.jk.prj.qna.command.CommentUpdate;
import co.jk.prj.qna.command.DeleteComment;
import co.jk.prj.qna.command.QnaInsert;
import co.jk.prj.qna.command.QnaInsertForm;
import co.jk.prj.qna.command.QnaListAjax;
import co.jk.prj.qna.command.QnaPageList;
import co.jk.prj.qna.command.QnaSearch;
import co.jk.prj.qna.command.QnaSelect;
import co.jk.prj.qna.command.QnaSelectForm;
import co.jk.prj.qna.command.QnaUpdate;
import co.jk.prj.qna.command.QnaUqdateForm;
import co.jk.prj.qna.command.SelectComment;
import co.jk.prj.qna.command.qnaDelete;
import co.jk.prj.review.command.ReviewDelete;
import co.jk.prj.review.command.ReviewInsert;
import co.jk.prj.review.command.ReviewInsertForm;
import co.jk.prj.review.command.ReviewListAjax;
import co.jk.prj.review.command.ReviewPageList;
import co.jk.prj.review.command.ReviewSearch;
import co.jk.prj.review.command.ReviewSelect;
import co.jk.prj.review.command.ReviewUpdate;
import co.jk.prj.review.command.ReviewUqdateForm;


/**
 * 모든요청을 받아들이는 컨트롤러
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	// 요청한 것을 실행하는 명령을 모아 두는 곳
	public void init(ServletConfig config) throws ServletException {

		map.put("/main.do", new MainCommand()); // 처음 보여줄 페이지 명령
		map.put("/login.do", new LoignPage()); // 처음 보여줄 페이지 명령
		map.put("/memberlogin.do", new MemberLogin());
		// -------- 덕진 --------
		map.put("/contract.do", new Contract());//이용약관
		map.put("/memberJoinForm.do", new MemberJoinForm());//회원가입폼
		map.put("/memberJoin.do", new MemberJoin());//회원가입 
		map.put("/AjaxMemberIdCheck.do", new AjaxMemberIdCheck()); //아이디중복 확인
		map.put("/memberPasswordCheck.do", new MemberPasswordCheck()); // 비밀번호확인 
		map.put("/memberUpdateForm.do", new MemberUpdateForm());//업데이트 폼 이동
		map.put("/memberUpdate.do", new MemberUpdate());//업데이트
		map.put("/memberLogout.do", new MemberLogout());//로그아웃
		map.put("/memberDelete.do", new MemberDelete());//회원탈퇴
		map.put("/orderList.do", new OrderList());// 주문목록이동
		map.put("/orderListAjax.do", new OrderListAjax()); //주문목록
		map.put("/adminOrderList.do", new AdminOrderList());//
		map.put("/adminOrderListAjax.do", new AdminOrderListAjax());
		map.put("/memberInfo.do", new MemberInfo());
		map.put("/adminOrderUpdate.do", new AdminOrderUpdate());
				// ------------------------
		// ------------------------태경 게시판(큐앤에이/리뷰)
		map.put("/qnaPageList.do", new QnaPageList()); // 큐앤에이 페이지 한화면 리스트
		map.put("/noticeQnaSelect.do", new NoticeQnaSelect()); // 큐앤에이상세보기(뒤로가기버튼이ㅏ 다름 )
		map.put("/noticeQnaDelete.do", new NoticeQnaDelete()); // 큐앤에이삭제(뒤로가기버튼이ㅏ 다름 )
		map.put("/noticeQnaUqdateForm.do", new NoticeQnaUqdateForm()); // 큐앤에이수정폼(뒤로가기버튼이ㅏ 다름 )
		map.put("/noticeQnaUpdate.do", new NoticeQnaUpdate()); // 큐앤에이수정(뒤로가기버튼이ㅏ 다름 )
		map.put("/qnaSearchPageList.do", new QnaSearchPageList()); // 검색시 큐앤에이 페이지 한화면 리스트
		
		map.put("/reviewPageList.do", new ReviewPageList()); // 리뷰 페이지 한화면 리스트
		map.put("/noticeReviewSelect.do", new NoticeReviewSelect()); // 리뷰 상세보기 (뒤로가기 버튼이 다름)
		map.put("/noticeReviewDelete.do", new NoticeReviewDelete()); // 리뷰 삭제 (뒤로가기 버튼이 다름)
		map.put("/noticeReviewUqdateForm.do", new noticeReviewUqdateForm()); // 리뷰 수정 폼 (뒤로가기 버튼이 다름)
		map.put("/noticeReviewUqdate.do", new NoticeReviewUqdate()); // 리뷰 수정 (뒤로가기 버튼이 다름)
		map.put("/reviewSearchPageList.do", new ReviewSearchPageList()); // 검색시 리뷰 페이지 한화면 리스트
		
		map.put("/productSingle.do", new ProductSingle()); // 상품의 정보값=> 상품상세페이지
		map.put("/qnaInsertForm.do", new QnaInsertForm()); // 큐앤에이 작성 폼으로 간다.
		map.put("/qnaInsert.do", new QnaInsert()); // 큐앤에이 인서트함
		map.put("/fileupload.do", new Fileupload()); // 파일업로드(noticecommand에 저장)
		map.put("/qnaListAjax.do", new QnaListAjax()); // 리스트출력
		map.put("/qnaSelect.do", new QnaSelect()); // 큐앤에이 상세보기
		map.put("/qnaSelectForm", new QnaSelectForm()); // 페이지 물리는거 나중에 다시 도전
		map.put("/qnaDelete.do", new qnaDelete()); // 큐앤에이 삭제
		
		map.put("/selectComment.do", new SelectComment()); // 큐앤에이 답글 불러오
		map.put("/commentInert.do", new CommentInert()); // 큐앤에이답글 작성
		map.put("/commentUpdate.do", new CommentUpdate()); // 큐앤에이 수정
		map.put("/deleteComment.do", new DeleteComment()); // 답글 삭제
		map.put("/qnaUqdateForm.do", new QnaUqdateForm()); // 게시글 수정폼 호출
		map.put("/qnaUpdate.do", new QnaUpdate()); // 게시글 수정
		map.put("/qnaSearch.do", new QnaSearch()); // 게시글 검색

		map.put("/reviewListAjax.do", new ReviewListAjax()); // 리뷰 리스트 
		map.put("/reviewInsertForm.do", new ReviewInsertForm()); // 리뷰 리스트 아작스 호출
		map.put("/reviewSelect.do", new ReviewSelect()); // 리뷰 선택
		map.put("/reviewInsert.do", new ReviewInsert()); // 리뷰 작성
		map.put("/reviewUqdateForm.do", new ReviewUqdateForm()); // 리뷰 수정폼
		map.put("/reviewUpdate.do", new ReviewUpdate()); // 리뷰 수정 
		map.put("/reviewSearch.do", new ReviewSearch()); // 리뷰 검색
		map.put("/reviewDelete.do", new ReviewDelete()); // 리뷰 삭제
		
		
		
		//태경 마이 페이지(문의랑 리뷰)
		map.put("/myQnaPageList.do", new MyQnaPageList()); // 내 큐앤에이
		map.put("/myReviewPageList.do", new MyReviewPageList()); // 내 리뷰


		// -------------------------태경끝 ======================

		// 지은
		map.put("/cakeCategoryForm.do", new CakeCategoryForm()); // 케이크
		map.put("/cookieCategoryForm.do", new CookieCategoryForm()); // 쿠키
		map.put("/chocolateCategoryForm.do", new ChocolateCategoryForm()); // 초코
		map.put("/breadCategoryForm.do", new BreadCategoryForm()); // 빵
		map.put("/giftSetCategoryForm.do", new GiftSetCategoryForm()); // 선물
		map.put("/eventCategoryForm.do", new EventCategoryForm()); // 삭제...?
		map.put("/productSelect.do", new ProductSingle()); // 상품 상세보기페이지
		map.put("/checkForm.do", new CheckForm()); // 결제페이지
		map.put("/contact.do", new contact()); // 지도
		map.put("/kakao.do", new kakao()); // 카카오페이
		map.put("/checkOut.do", new CheckOut());//결제완료페이지

		// ------------------------
		map.put("/cakeCategoryForm.do", new CakeCategoryForm());
		map.put("/cookieCategoryForm.do", new CookieCategoryForm());
		map.put("/chocolateCategoryForm.do", new ChocolateCategoryForm());
		map.put("/breadCategoryForm.do", new BreadCategoryForm());
		map.put("/giftSetCategoryForm.do", new GiftSetCategoryForm());
		map.put("/eventCategoryForm.do", new EventCategoryForm());

//		-- 마이페이지(준우형) --
		map.put("/myPageForm.do", new MyPageForm());

//      --마이페이지end--
//     -- 장바구니 --
		map.put("/cart.do", new CartPage()); // 장바구니페이지
		map.put("/AjaxCartList.do", new AjaxCartList()); // 장바구니 리스트 출력
		map.put("/AjaxCartDel.do", new AjaxCartDel()); // 장바구니 삭제
		map.put("/cartUpdate.do", new CartUpdate());
		map.put("/cartPay.do", new CartPay()); //장바구니 -> 결제창 이동		--------------------
//		재엽
		map.put("/cartAdd.do", new CartAdd()); // 장바구니 추가
		map.put("/payright.do", new Payright()); // 바로 결제
//		--장바구니end--


//		--noitce--
		map.put("/notice.do", new noticePage()); // notice으로 이동하기 위한 do
		map.put("/noticeListAjax.do", new NoticeListAjax()); // noticeLIST 출력을 위한 컨트롤러
		map.put("/noticeInsertForm.do", new NoticeInsertForm());
		map.put("/noticeSelect.do", new NoticeSelect());
		map.put("/noticeDelete.do", new NoticeDelete());
		map.put("/noticeEditForm.do", new NoticeEditForm());
		map.put("/noticeInsertForm.do", new NoticeInsertForm());
		map.put("/noticeInsert.do", new NoticeInsert());
		map.put("/noticeEdit.do", new NoticeEdit());

	}

	// 요청을 분석하고 실행, 결과를 돌려주는 곳
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글깨짐방지
		String uri = request.getRequestURI(); // 요청한 uri를 구함
		String contextPath = request.getContextPath(); // 루트를 구함,context path
		String page = uri.substring(contextPath.length()); // 실제 수행할 요청을 구함

		Command command = map.get(page); // init 메소드에서 수행할 명령을 가져온다.
		String viewPage = command.exec(request, response); // 명령을 수행하고 결과를 돌려받음

		// viewResolve 파트
		if (!viewPage.endsWith(".do") && viewPage != null) {
			// ajax 처리
			if (viewPage.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().append(viewPage.substring(5));
				return;
			}
			// 타일즈 돌아가는곳
			if (!viewPage.endsWith(".tiles")) {
				viewPage = "/WEB-INF/views/" + viewPage + ".jsp"; // 타일즈를 안태움
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);

		} else {
			response.sendRedirect(viewPage); // *.do 로 들어올때 돌아가는 곳

		}

	}
}
