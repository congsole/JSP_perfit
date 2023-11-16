package perfit.controller;

import perfit.controller.action.Action;
import perfit.controller.action.DirectBuyFormAction;
import perfit.controller.action.ExchangeFormAction;
import perfit.controller.action.FaqListAction;
import perfit.controller.action.HeaderSearchAction;
import perfit.controller.action.MainAction;
import perfit.controller.action.MainListAction;
import perfit.controller.action.MainViewAction;
import perfit.controller.action.MemberIdCheckAction;
import perfit.controller.action.MemberIdCheckFormAction;
import perfit.controller.action.MemberIdFindAction;
import perfit.controller.action.MemberIdFindFormAction;
import perfit.controller.action.MemberJoinAction;
import perfit.controller.action.MemberJoinFormAction;
import perfit.controller.action.MemberListAction;
import perfit.controller.action.MemberLoginAction;
import perfit.controller.action.MemberLoginFormAction;
import perfit.controller.action.MemberLogoutAction;
import perfit.controller.action.MemberPwdFindAction;
import perfit.controller.action.MemberPwdFindFormAction;
import perfit.controller.action.MemberSizeAction;
import perfit.controller.action.MemberSizeFormAction;
import perfit.controller.action.MemberUpdateAction;
import perfit.controller.action.MemberUpdateFormAction;
import perfit.controller.action.MemberWithdrawalAction;
import perfit.controller.action.MemberWithdrawalComAction;
import perfit.controller.action.MemberWithdrawalFormAction;
import perfit.controller.action.MyPageAction;
import perfit.controller.action.NoticeDeleteAction;
import perfit.controller.action.NoticeListAction;
import perfit.controller.action.NoticeUpdateAction;
import perfit.controller.action.NoticeUpdateFormAction;
import perfit.controller.action.NoticeViewAction;
import perfit.controller.action.NoticeWriteAction;
import perfit.controller.action.NoticeWriteFormAction;
import perfit.controller.action.OrderDeliveryAction;
import perfit.controller.action.OrderDeliveryCompleteAction;
import perfit.controller.action.OrderDetailAction;
import perfit.controller.action.OrderListAction;
import perfit.controller.action.OrderManageAction;
import perfit.controller.action.OrderSearchAction;
import perfit.controller.action.OrderSearchFormAction;
import perfit.controller.action.PaymentAction;
import perfit.controller.action.PaymentCompleteAction;
import perfit.controller.action.PaymentFormAction;
import perfit.controller.action.PictureDeleteAction;
import perfit.controller.action.PictureUpdateAction;
import perfit.controller.action.PictureUpdateFormAction;
import perfit.controller.action.PictureUploadAction;
import perfit.controller.action.PictureUploadFormAction;
import perfit.controller.action.ProductDeleteAction;
import perfit.controller.action.ProductListAction;
import perfit.controller.action.ProductSearchAction;
import perfit.controller.action.ProductSearchFormAction;
import perfit.controller.action.ProductSizeUpdateAction;
import perfit.controller.action.ProductSizeUpdateFormAction;
import perfit.controller.action.ProductSizeWriteAction;
import perfit.controller.action.ProductSizeWriteFormAction;
import perfit.controller.action.ProductUpdateAction;
import perfit.controller.action.ProductUpdateFormAction;
import perfit.controller.action.ProductViewAction;
import perfit.controller.action.ProductWriteAction;
import perfit.controller.action.ProductWriteFormAction;
import perfit.controller.action.QnaAnswerAction;
import perfit.controller.action.QnaAnswerDeleteAction;
import perfit.controller.action.QnaDeleteAction;
import perfit.controller.action.QnaListAction;
import perfit.controller.action.QnaSearchAction;
import perfit.controller.action.QnaUpdateAction;
import perfit.controller.action.QnaUpdateFormAction;
import perfit.controller.action.QnaViewAction;
import perfit.controller.action.QnaWriteAction;
import perfit.controller.action.QnaWriteFormAction;
import perfit.controller.action.ShoppingBasketAddAction;
import perfit.controller.action.ShoppingBasketDeleteAction;
import perfit.controller.action.ShoppingBasketFormAction;
import perfit.controller.action.ShoppingBasketSearchAction;

public class ActionFactory {
	private static ActionFactory instance = new ActionFactory();

	private ActionFactory() {
	}

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command) {
		Action action = null;

		/* SHS */
		if (command.equals("Product_list")) {
			action = new ProductListAction();
		} else if (command.equals("Product_write_form")) { // 얘는 입력 폼으로 안내하는...
			action = new ProductWriteFormAction();
		} else if (command.equals("Product_write")) { // 이친구는 vo 객체 조립하고 DAO불러서 등록시키는..
			action = new ProductWriteAction();
		} else if (command.equals("Product_view")) {
			action = new ProductViewAction();
		} else if (command.equals("product_update_form")) {
			action = new ProductUpdateFormAction();
		} else if (command.equals("product_update")) {
			action = new ProductUpdateAction();
		} else if (command.equals("product_delete")) {
			action = new ProductDeleteAction();
		} else if (command.equals("product_search_form")) {
			action = new ProductSearchFormAction();
		} else if (command.equals("product_search")) {
			action = new ProductSearchAction();
		}

		else if (command.equals("size_write_form")) {
			action = new ProductSizeWriteFormAction();
		} else if (command.equals("size_write")) {
			action = new ProductSizeWriteAction();
		} else if (command.equals("size_update_form")) {
			action = new ProductSizeUpdateFormAction();
		} else if (command.equals("size_update")) {
			action = new ProductSizeUpdateAction();
		}

		else if (command.equals("picture_upload_form")) {
			action = new PictureUploadFormAction();
		} else if (command.equals("picture_upload")) {
			action = new PictureUploadAction();
		} else if (command.equals("picture_update_form")) {
			action = new PictureUpdateFormAction();
		} else if (command.equals("picture_update")) {
			action = new PictureUpdateAction();
		} else if (command.equals("picture_delete")) {
			action = new PictureDeleteAction();

		} else if (command.equals("member_join_form")) {
			action = new MemberJoinFormAction();
		} else if (command.equals("member_join")) {
			action = new MemberJoinAction();
		} else if (command.equals("member_id_check_form")) {
			action = new MemberIdCheckFormAction();
		} else if (command.equals("member_id_check")) {
			action = new MemberIdCheckAction();
		} else if (command.equals("member_id_find_form")) {
			action = new MemberIdFindFormAction();
		} else if (command.equals("member_id_find")) {
			action = new MemberIdFindAction();
		} else if (command.equals("member_pwd_find_form")) {
			action = new MemberPwdFindFormAction();
		} else if (command.equals("member_pwd_find")) {
			action = new MemberPwdFindAction();
		} else if (command.equals("member_login_form")) {
			action = new MemberLoginFormAction();
		} else if (command.equals("member_login")) {
			action = new MemberLoginAction();
		} else if (command.equals("member_logout")) {
			action = new MemberLogoutAction();
		} else if (command.equals("member_update")) {
			action = new MemberUpdateAction();
		} else if (command.equals("member_update_form")) {
			action = new MemberUpdateFormAction();
		} else if (command.equals("member_size_form")) {
			action = new MemberSizeFormAction();
		} else if (command.equals("member_size")) {
			action = new MemberSizeAction();
		} else if (command.equals("member_list")) {
			action = new MemberListAction();
		}

		else if (command.equals("header_search")) {
			action = new HeaderSearchAction();
		}

		else if (command.equals("main")) {
			action = new MainAction();
		}
		else if(command.equals("direct_buy_form")) {
			action = new DirectBuyFormAction();
		}

		/* OHK */
		/* OHK */
		else if(command.equals("Qna_list")) {
			action = new QnaListAction();
		}else if (command.equals("Qna_write_form")) {
			action = new QnaWriteFormAction();
		}else if(command.equals("Qna_write")) {
			action = new QnaWriteAction();
		}else if(command.equals("Qna_view")) {
			action = new QnaViewAction();
		}else if(command.equals("Qna_update_form")) {
			action = new QnaUpdateFormAction();
		}else if(command.equals("Qna_update")) {
			action = new QnaUpdateAction();
		}else if(command.equals("Qna_delete")) {
			action = new QnaDeleteAction();
		}else if(command.equals("Qna_search")) {
			action = new QnaSearchAction();
		}else if(command.equals("Qna_answer")) {
			action = new QnaAnswerAction();
	
		}else if(command.equals("Qna_answer_delete")) {
			action = new QnaAnswerDeleteAction();	
		}else if(command.equals("FAQ_list"))	{
		action = new FaqListAction();
		}else if(command.equals("main_list"))	{
			action = new MainListAction();
		}else if(command.equals("main_view"))	{
			action = new MainViewAction();
		}else if(command.equals("notice_list")) {
			action = new NoticeListAction();
		}else if (command.equals("notice_write_form")) {
			action = new NoticeWriteFormAction();
		}else if(command.equals("notice_write")) {
			action = new NoticeWriteAction();
		}else if(command.equals("notice_view")) {
			action = new NoticeViewAction();
		}else if(command.equals("notice_update_form")) {
			action = new NoticeUpdateFormAction();
		}else if(command.equals("notice_update")) {
			action = new NoticeUpdateAction();
		}else if(command.equals("notice_delete")) {
			action = new NoticeDeleteAction();
		}

		/* SSJ */
		else if (command.equals("myPage")) {
			action = new MyPageAction();
		} else if (command.equals("shoppingBasket_add")) {
			action = new ShoppingBasketAddAction();
		} else if (command.equals("shoppingBasket_delete")) {
			action = new ShoppingBasketDeleteAction();
		} else if (command.equals("shoppingBasket_search")) {
			action = new ShoppingBasketSearchAction();
		} else if (command.equals("shoppingBasket_form")) {
			action = new ShoppingBasketFormAction();
		} else if (command.equals("order_list")) {
			action = new OrderListAction();
		} else if (command.equals("order_detail")) {
			action = new OrderDetailAction();
		} else if (command.equals("orderSearch")) {
			action = new OrderSearchAction();
		} else if (command.equals("orderSearch_form")) {
			action = new OrderSearchFormAction();
		} else if (command.equals("order_manage")) {
			action = new OrderManageAction();
		} else if (command.equals("order_delivery")) {
			action = new OrderDeliveryAction();
		} else if (command.equals("order_delivery_com")) {
			action = new OrderDeliveryCompleteAction();
		} else if (command.equals("payment")) {
			action = new PaymentAction();
		} else if (command.equals("payment_form")) {
			action = new PaymentFormAction();
		} else if (command.equals("payment_complete")) {
			action = new PaymentCompleteAction();
		} else if (command.equals("exchange_form")) {
			action = new ExchangeFormAction();
		} // 회원 탈퇴 추가
		else if (command.equals("member_withdrawal_form")) {
			action = new MemberWithdrawalFormAction();
		} else if (command.equals("member_withdrawal")) {
			action = new MemberWithdrawalAction();
		} else if (command.equals("member_withdrawal_complete")) {
			action = new MemberWithdrawalComAction();
		}

		return action;
	}
}
