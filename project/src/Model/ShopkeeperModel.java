package Model;

public class ShopkeeperModel extends Model{
	
	// ID, PW, 가게 이름, 주소, 사업자번호, 평점, 전화번호 
	private String SHOPNAME;
	private String SHOP_ADDRESS;
	private int BUSINESS_LICENSE;
	private int	RATING;
	private String	SHOP_TEL;
	private String	SECTOR;
	
	
	// 회원가입
	public ShopkeeperModel(String ID, String PW, String SHOPNAME, String SHOP_ADDRESS, int BUSINESS_LICENSE, String SHOP_TEL, String SECTOR) {
		super(ID, PW);
		this.SHOPNAME = SHOPNAME;
		this.SHOP_ADDRESS = SHOP_ADDRESS;
		this.BUSINESS_LICENSE = BUSINESS_LICENSE;
		this.SHOP_TEL = SHOP_TEL;
		this.SECTOR = SECTOR;
		
	}
	
	
	
	public ShopkeeperModel(String ID, String PW, String sHOPNAME, String sHOP_ADDRESS, String sHOP_TEL) {
		super(ID, PW);
		SHOPNAME = sHOPNAME;
		SHOP_ADDRESS = sHOP_ADDRESS;
		SHOP_TEL = sHOP_TEL;
	}



	// 로그인
	public ShopkeeperModel(String ID, String PW) {
		super(ID, PW);
		
	}



	public ShopkeeperModel( String sHOPNAME, String sHOP_ADDRESS, String sHOP_TEL) {
		SHOPNAME = sHOPNAME;
		SHOP_ADDRESS = sHOP_ADDRESS;
		SHOP_TEL = sHOP_TEL;
	}



	// getter
	public String getSHOPNAME() {
		return SHOPNAME;
	}


	public String getSHOP_ADDRESS() {
		return SHOP_ADDRESS;
	}


	public int getBUSINESS_LICENSE() {
		return BUSINESS_LICENSE;
	}


	public int getRATING() {
		return RATING;
	}


	public String getSHOP_TEL() {
		return SHOP_TEL;
	}

	// setter
	public void setSHOPNAME(String sHOPNAME) {
		this.SHOPNAME = sHOPNAME;
	}

	public void setADDRESS(String aDDRESS) {
		this.SHOP_ADDRESS = aDDRESS;
	}

	public void setBUSINESS_LICENSE(int bUSINESS_LICENSE) {
		this.BUSINESS_LICENSE = bUSINESS_LICENSE;
	}

	public void setRATING(int rATING) {
		this.RATING = rATING;
	}

	public void setTEL(String SHOP_TEL) {
		this.SHOP_TEL = SHOP_TEL;
	}



	public String getSECTOR() {
		return SECTOR;
	}



	public void setSECTOR(String sECTOR) {
		SECTOR = sECTOR;
	}
	
	
	
}
