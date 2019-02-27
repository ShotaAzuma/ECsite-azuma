package com.internousdev.ecsite.action;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dao.LoginDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware {

	private String loginUserId;
	private String loginPassword;
;

	private String result;
	private Map<String,Object> session;

	public String execute(){
		LoginDAO loginDAO=new LoginDAO();
		LoginDTO loginDTO=new LoginDTO();
		BuyItemDAO buyItemDAO=new BuyItemDAO();

		result=ERROR;
		loginDTO=loginDAO.getLoginUserInfo(loginUserId,loginPassword);
		session.put("loginUser",loginDTO);

		if((((LoginDTO) session.get("loginUser")).getAdminFlg() != null)
				&& (((LoginDTO) session.get("loginUser")).getAdminFlg().equals("1"))) {
			result = "admin";

			session.put("admin_flg", loginDTO.getAdminFlg());


		} else if(((LoginDTO) session.get("loginUser")).getLoginFlg()) {
			result = SUCCESS;
			BuyItemDTO buyItemDTO = buyItemDAO.getBuyItemInfo();

			session.put("login_user_id", loginDTO.getLoginId());
			session.put("id", buyItemDTO.getId());
			session.put("buyItem_name", buyItemDTO.getItemName());
			session.put("buyItem_price", buyItemDTO.getItemPrice());
//		if(((LoginDTO) session.get("loginUser")).getLoginFlg()){
//			result=SUCCESS;
//			BuyItemDTO buyItemDTO=buyItemDAO.getBuyItemInfo();
//
//			session.put("login_user_id",loginDTO.getLoginId());
//			session.put("id",buyItemDTO.getId());
//			session.put("buyItem_name",buyItemDTO.getItemName());
//			session.put("buyItem_price",buyItemDTO.getItemPrice());

			return result;
		}
		return result;
	}

	public String getLoginUserId(){
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId){
		this.loginUserId=loginUserId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}

	public Map<String,Object> getSession(){
		return session;
	}

	@Override
	public void setSession(Map<String,Object> session){
		this.session=session;
	}

}

