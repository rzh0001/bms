package com.xj.cms.business.ad.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 * <p>
 * 轮播图管理
 * </p>
 *
 * @author xj
 * @since 2016-12-21
 */
@TableName("tb_ad")
public class TbAd extends Model<TbAd> {

    private static final long serialVersionUID = 1L;

	/**
	 * 
	 */
	private Integer id;
	/**
	 * 
	 */
	private String title;
	/**
	 * 
	 */
	private String url;
	/**
	 * 
	 */
	@TableField(value="img_url")
	private String imgUrl;
	/**
	 * 
	 */
	private Integer sort;
	/**
	 * 1显示  2隐藏
	 */
	@TableField(value="is_show")
	private Integer isShow;
	/**
	 * 
	 */
	private String content;
	/**
	 * 
	 */
	@TableField(value="create_time")
	private Date createTime;
	/**
	 * 
	 */
	@TableField(value="create_user")
	private String createUser;
	/**
	 * 
	 */
	@TableField(value="update_time")
	private Date updateTime;
	/**
	 * 
	 */
	@TableField(value="update_user")
	private String updateUser;
	/**
	 * 
	 */
	@TableField(value="local_code")
	private String localCode;


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}

	public Integer getSort() {
		return sort;
	}

	public void setSort(Integer sort) {
		this.sort = sort;
	}

	public Integer getIsShow() {
		return isShow;
	}

	public void setIsShow(Integer isShow) {
		this.isShow = isShow;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCreateUser() {
		return createUser;
	}

	public void setCreateUser(String createUser) {
		this.createUser = createUser;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public String getUpdateUser() {
		return updateUser;
	}

	public void setUpdateUser(String updateUser) {
		this.updateUser = updateUser;
	}

	public String getLocalCode() {
		return localCode;
	}

	public void setLocalCode(String localCode) {
		this.localCode = localCode;
	}

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

}
