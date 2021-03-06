package controller;

import java.util.ArrayList;

import Model.MemberDAO;
import Model.Menu;
import Model.Model;
import Model.Payment;
import Model.RiderModel;
import Model.ShopkeeperModel;
import Model.UserModel;

public class MemberManagementService {

	private MemberDAO dao = new MemberDAO();

	
	// 중복 확인
	public boolean idCheck(Model m) {
		Model ID = dao.idCheck(m);
		if (ID == null) {
			return true;
		} else {
			return false;
		}
	}
	
	
	//
	public boolean sujung(UserModel m, String id) {
		int rows = dao.sujung(m, id);
		if (rows == 0) {
			return true;
		} else {
			return false;
		}
	}
	
	
	
	// 생성
	public boolean memberJoin(UserModel m) {
		int rows = dao.insert(m);
		if (rows == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public boolean riderJoin(RiderModel m) {
		int rows = dao.insert1(m);
		if (rows == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public boolean shopkeeperJoin(ShopkeeperModel m) {
		int rows = dao.insert2(m);
		if (rows == 0) {
			return false;
		} else {
			return true;
		}
	}

	//로그인
	public Model userLogin(Model m) {
		Model loginUser = dao.selectUser(m);
		return loginUser;
	}
	
	public ShopkeeperModel ShopkepperLogin(Model m) {
		ShopkeeperModel loginShopkepper = dao.selectShopkeeper(m);
		return loginShopkepper;
	}
	
	public RiderModel RiderLogin(Model m) {
		RiderModel loginRider = dao.selectRider(m);
//		Model loginRider = dao.selectRider(m);
		return loginRider;
	}
	
	public boolean insultMenu(String String, int num, String id ) {
		int rows = dao.insert5(String, num,id);
		if (rows == 0) {
			return false;
		} else {
			return true;
		}
	}
	
	public ArrayList<Payment> memberLookup(String id, String  shop ) {
		return dao.selectAll(id, shop);
	}

	public ArrayList <ShopkeeperModel> getShop (int n ) {
		
		ArrayList <ShopkeeperModel> shop = dao.selecthan(n);
		return shop;
		
		
	}
	
	public ArrayList <String> getShop (String id ) {
		
		ArrayList <String> shop = dao.selecthan(id);
		return shop;
		
		
	}
	

	public int nextline(int m) {
		return dao.next(m);
	}


	public int nextline(String id) {
		return dao.next(id);
	}

	

	public void onoff(String id, int n) {
		dao.onoff(id,n);
		
	}


	public int nextmenu(String id) {
	
		return dao.menu(id);
	}



	public ArrayList <Menu> getMenu (String id) {
		ArrayList <Menu> menulist = dao.selecmenu(id);
		return menulist;
		
	}
	
//	service.insertOrder(userId, shopkeeperID,seq);
	public boolean insertOrder(String userId, String shopkeeperID, int seq) {
		int rows =  dao.insertOrder(userId, shopkeeperID, seq);
		if (rows == 0) {
			return false;
		} else {
			return true;
		}
	}


	public int selectMenu(String id, String food) {
		
			return  dao.selectMenu(id, food);
		
		
	}


	public int selectPrice(String id, String food) {
	
		return dao.selectPrice(id, food);
	}
	
	
	

}
