package com.xj.cms.base.exception;
/**
 * 
 * DateHelper
 * 
 * Eric
 *  
 * 2015年10月20日 
 *  
 * 
 */
public enum EnumSvrResult {
	/**
	 * 操作成功
	 * */
	OK("0", "成功！"),
	/**
	 *喔唷！服务器错误！
	 * */
	ERROR("1", "喔唷！服务器错误."),
	
	ERROR_PHONE_IS_USED("2", "该账号已被绑定."),
	
	ERROR_PARAMS("4","参数错误."),
	
	ERROR_ACCOUNT_PASSWORD_NULL("5","用户名或密码不能为空."),
	
	ERROR_ACCOUNT_PASSWORD_ERROR("6","用户名或密码错误."),
	
	ERROR_INTERFACE("7","接口调用失败."),
	
	ERROR_SENGMSG("8","短信发送失败."),
	
	ERROR_USER_NOT_EXIST("9","该用户不存在."),
	
	ERROR_USER_PASSWORD("10","密码错误."),
	
	ERROR_DATA_DEFIND("11","数据不存在."),
	
	ERROR_PARENT_CODE("12","邀请码错误."),
	
	ERROR_USER_CODE("13","用户CODE获取失败."),
	
	ERROR_USER_INFO("14","用户信息获取失败."),
	
	ERROR_MISFIT_TOKEN("11000","用户Token获取失败."),
	ERROR_MISFIT_USER_INFO("11001","用户信息获取失败."),
	
	PARAM_PHONE_NULL("1001","手机号码不能为空"),
	
	PARAM_CODE_NULL("1002","验证码不能为空"),
	
	PARAM_ACCOUNT_NULL("1003","账号不能为空"),
	
	PARAM_PASSWORD_NULL("1004","密码不能为空"),
	
	PARAM_NICKNAME_NULL("1005","昵称不能为空"),
	
	PARAM_NICKNAME_EXIST("1006","昵称已存在"),
	
	PARAM_USERID_NULL("1007","用户编号不能为空"),
	
	PARAM_STOREID_NULL("1008","店铺编号不能为空"),
	
	PARAM_REALNAME_NULL("1009","姓氏不能为空"),
	
	PARAM_APPELLATION_NULL("1010","请选择称谓"),
	
	PARAM_ORDERNUM_NULL("10111","订单号不能为空"),
	
	PARAM_PRODUNCT_NULL("10112","录入的产品为空"),
	
	PARAM_ORDERAMOUNT_NULL("10113","订单号金额不能为空"),
	
	PARAM_ORDER_ITEMNO_NULL("10114","退货的商品不能为空"),
	
	PARAM_NOTICEID_NULL("10115","通知编号不能为空"),
	
	PARAM_OLD_PASSWORD_NULL("10116","原密码不能为空"),
	
	PARAM_USERNAME_NULL("10117","用户名不能为空"),
	
	PARAM_ITEMNO_NULL("10118","货号不能为空"),
	
	CODE_DEFIND("2001","验证码不存在"),
	
	CODE_DISABALE("2002","验证码已失效"),
	
	STORE_DEFIND("3001","店铺不存在"),
	
	ORDER_DEFIND("4001","订单不存在"),
	
	PRODUCT_DEFIND("5001","该产品不存在"),
	
	MOVEMENT_ID_ISNOTEMPTY("6001","活动id不能为空"),
	
	PRICE_IS_NOTEMPTY("7001","订单价格不能为空"),
	
	CONTACT_IS_NOTEMPTY("8001","联系人不能为空"),
	
	CONTACT_NAME_IS_NOTEMPTY("9001","联系人姓名不能为空"),
	
	CONTACT_MOBILE_IS_NOTEMPTY("10001","联系人手机不能为空"),
	
	CONTACT_EMAIL_IS_NOTEMPTY("10002","联系人邮箱不能为空"),
	
	PARTICIPANTS_IS_NOTEMPTY("10003","参与人不能为空"),
	
	PARTICIPANTS_NAME_IS_NOTEMPTY("10004","参与人姓名不能为空"),
	
	PARTICIPANTS_SEX_IS_NOTEMPTY("10005","参与人性别不能为空"),
	
	PARTICIPANTS_CARDTYPE_IS_NOTEMPTY("10006","参与人证件类型不能为空"),
	
	PARTICIPANTS_CARDNUM_IS_NOTEMPTY("10007","参与人证件号码不能为空"),
	
	USERS_ID_IS_NOTEMPTY("10008","用户id不能为空"),
	
	MOVEMENT_SUBJECT_ISNOTEMPTY("10009","活动标题不能为空"),
	
	MOVEMENT_BODY_ISNOTEMPTY("100010","活动描述不能为空"),
	
	MOVEMENT_IS_DEFIND("100011","活动不存在"),
	
	FILE_IS_NOTEMPTY("100012","文件不能为空"),
	
	FILE_UPLOAD_FAIL("100013","文件上传失败"),
	
	FILE_UPLOAD_TYPE_ERROR("100014","上传文件类型错误"),
	
	PASTES_IS_DEFIND("100015","内容不存在"),
	
	HEALTH_IS_USED("100016","该用户信息已存在"),
	
	PAY_TYPE_IS_NOTEMPTY("200001","支付类型不参为空"),
	
	OPEN_ID_IS_NOTEMPTY("200002","OpenId不能为空"),
	
	BODY_IS_NOTEMPTY("200003","支付描述不能为空"),
	
	ORDERNUMBER_IS_NOTEMPTY("200004","订单号不能为空"),
	
	AMOUNT_IS_NOTEMPTY("200005","订单金额不能为空"),
	
	MOVEMENT_ENROLL("200006","活动剩余名额不够"),
	
	CATEGORY_ENROLL_IS_NOTEMPTY("200007","请选择类目"),
	
	PARAM_HONOR_NULL("200008","参与人编号不能为空"),
	
	PASTES_TYPE_NULL("200009","获取广场数据类型不能为空"),
	;
	
	
	
	private String val;
	private String name;

	EnumSvrResult(String val, String name) {
		this.val = val;
		this.name = name;
	}

	public String getVal() {
		return this.val;
	}

	public String getName() {
		return this.name;
	}
}
