package com.heatmap.constants;

public class AppConstant {

	public static final String PROPERTIESFILENAME = "myconf.properties";

	public static final String MOSTCRITICAL = "Most Critical";
	public static final String CRITICAL = "Critical";
	public static final String LEASTCRITICAL = "Least Critical";

	public static final String MAILFROM = "kelvintsp2020@gmail.com";
	public static final String ACTIVE = "ACTIVE";
	public static final String INACTIVE = "ACTIVE";
	public static final Integer NOOFDAYSOFMAILACTIVATION=30;
	
	public static final Integer HEADERROW=0;
	public static final Integer SHEETNOOFEXCELTOREAD=0;
	
	public static final String TCODE="tcode";
	public static final String TCOUNT="tcount";
	public static final String GTIME="gtime";
	public static final String ERROR="error";
	
	//for password encoding
	public static final String SECRETKEY = "boooooooooom!!!!";
	public static final String SALT = "ssshhhhhhhhhhh!!!!";
	public static final String ALGORITHM = "PBKDF2WithHmacSHA256";
	public static final String TRANSFORMATION="AES/CBC/PKCS5Padding";
	public static final String TRANSFORMATIONFORMAT="UTF-8";
	public static final String SECRETKEYALGO="AES";
	
	public static final String LOGIN="login";
	public static final String REGISTER="register";
	public static final String OTP="enterOtp";
	public static final String CHANGEPASSWORD="changePassword";
	public static final String CHECKOTP="/checkOtp";
	public static final String FORGOTPASSWORD="forgotPassword";
	public static final String FORGOTPASSWORDURL="/forgotPassword";
	public static final String REGISTERURL="/register";
	public static final String LOGINURL="/";
	public static final String LOGINURLS="/login";
	public static final String LOGOUTURL="/logout";
	public static final String LOGOUT="logout";
	public static final String LOGINACTIONURL="/loginProcess";
	public static final String REGISTERACTIONURL="/registerProcess";
	public static final String LOGINSUCCESS="frontPage";
	public static final String TEMPLATEDOWNLOAD="templateDownload";
	public static final String SENDOTP="/sendOtp";
	public static final String TEMPLATEDOWNLOADURL="/templateDownload";
	public static final String UPDATEPASSWORD="/updatePassword";
	public static final String PASSWORDUPDATED="passwordUpdated";
	public static final String EMAILLINK="emailLink";
	public static final String EMAILLINKURL="emailLink";
	
	//key
	public static final String MESSAGE="msg";
	public static final String USEREMAIL="email";
	public static final String LOGINPAGEHEADER="loginPageHeader";
	public static final String EMAILNOTFOUND="emailNotFound";
	
	public static final String FROMNAME="TSP Kelvin";
	
	private AppConstant() {

	}

}
