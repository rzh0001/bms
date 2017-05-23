package com.xj.admin.base.user.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import com.baomidou.mybatisplus.enums.IdType;
import com.xj.admin.base.dept.entity.TbDept;
import com.xj.admin.base.role.entity.TbRole;

/**
 * <p>
 * 用户账户表
 * </p>
 *
 * @author xj
 * @since 2016-12-20
 */
@TableName("tb_user")
public class TbUser extends Model<TbUser> {

    private static final long serialVersionUID = 1L;

	/**
	 * 用户id
	 */
	@TableId(value="u_id",type=IdType.AUTO)
	private Integer id;
	/**
	 * 真实姓名
	 */
	@TableField(value="u_name")
	private String userName;
	/**
	 * 账户名称
	 */
	@TableField(value="u_account_name")
	private String accountName;
	/**
	 * 用户密码
	 */
	@TableField(value="u_password")
	private String password;
	/**
	 * 逻辑删除状态
	 */
	@TableField(value="u_delete_status")
	private Integer deleteStatus;
	/**
	 * 是否锁定
	 */
	@TableField(value="u_locked")
	private Integer locked;
	/**
	 * 用户描述
	 */
	@TableField(value="u_description")
	private String description;
	/**
	 * 加密盐
	 */
	@TableField(value="u_credentials_salt")
	private String credentialsSalt;
	/**
	 * 创建者
	 */
	@TableField(value="u_creator_name")
	private String creatorName;
	/**
	 * 创建时间
	 */
	@TableField(value="u_create_time")
	private Date createTime;
	/**
	 * 更新时间
	 */
	@TableField(value="u_update_time")
	private Date updateTime;
	
	
	@TableField(value="u_dept_id")
	private Integer deptId;
	
	@TableField(exist=false)
	private String deptName;
	
	@TableField(exist=false)
	private TbRole role;
	
	@TableField(exist=false)
	private TbDept dept;
	
	@TableField(value="u_email")
	private String email;
	
	@TableField(value="u_img")
	private String img;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getAccountName() {
		return accountName;
	}


	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Integer getDeleteStatus() {
		return deleteStatus;
	}


	public void setDeleteStatus(Integer deleteStatus) {
		this.deleteStatus = deleteStatus;
	}


	public Integer getLocked() {
		return locked;
	}


	public void setLocked(Integer locked) {
		this.locked = locked;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public String getCredentialsSalt() {
		return credentialsSalt;
	}


	public void setCredentialsSalt(String credentialsSalt) {
		this.credentialsSalt = credentialsSalt;
	}


	public String getCreatorName() {
		return creatorName;
	}


	public void setCreatorName(String creatorName) {
		this.creatorName = creatorName;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public Date getUpdateTime() {
		return updateTime;
	}


	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}
	
	public TbRole getRole() {
		return role;
	}


	public void setRole(TbRole role) {
		this.role = role;
	}


	public TbUser(String accountName) {
		super();
		this.accountName = accountName;
	}

	public Integer getDeptId() {
		return deptId;
	}


	public void setDeptId(Integer deptId) {
		this.deptId = deptId;
	}
	
	public TbDept getDept() {
		return dept;
	}


	public void setDept(TbDept dept) {
		this.dept = dept;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

	public TbUser() {
		super();
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	@Override
	protected Serializable pkVal() {
		return this.id;
	}

}
