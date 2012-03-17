/*
 * 
 * LegendShop 多用户商城系统
 * 
 *  版权所有,并保留所有权利。
 * 
 */
package com.legendshop.model.entity;

import java.util.Date;

/**
 * LegendShop 版权所有 2009-2011,并保留所有权利。
 * ----------------------------------------------------------------------------
 * 提示：在未取得LegendShop商业授权之前，您不能将本软件应用于商业用途，否则LegendShop将保留追究的权力。
 * ----------------------------------------------------------------------------
 * 官方网站：http://www.legendesign.net
 * ----------------------------------------------------------------------------
 */
public class Myfavorite implements java.io.Serializable {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -4386671446122853240L;

	/** The id. */
	private String id;

	/** The prod id. */
	private Long prodId;

	/** The prod name. */
	private String prodName;

	/** The addtime. */
	private Date addtime;

	/** The memo. */
	private String memo;

	// Constructors

	/**
	 * default constructor.
	 */
	public Myfavorite() {
	}

	/**
	 * minimal constructor.
	 * 
	 * @param id
	 *            the id
	 */
	public Myfavorite(String id) {
		this.id = id;
	}

	/**
	 * full constructor.
	 * 
	 * @param id
	 *            the id
	 * @param prodId
	 *            the prod id
	 * @param prodName
	 *            the prod name
	 * @param addtime
	 *            the addtime
	 * @param memo
	 *            the memo
	 */
	public Myfavorite(String id, Long prodId, String prodName, Date addtime,
			String memo) {
		this.id = id;
		this.prodId = prodId;
		this.prodName = prodName;
		this.addtime = addtime;
		this.memo = memo;
	}

	// Property accessors

	/**
	 * Gets the id.
	 * 
	 * @return the id
	 */
	public String getId() {
		return this.id;
	}

	/**
	 * Sets the id.
	 * 
	 * @param id
	 *            the new id
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * Gets the prod id.
	 * 
	 * @return the prod id
	 */
	public Long getProdId() {
		return this.prodId;
	}

	/**
	 * Sets the prod id.
	 * 
	 * @param prodId
	 *            the new prod id
	 */
	public void setProdId(Long prodId) {
		this.prodId = prodId;
	}

	/**
	 * Gets the prod name.
	 * 
	 * @return the prod name
	 */
	public String getProdName() {
		return this.prodName;
	}

	/**
	 * Sets the prod name.
	 * 
	 * @param prodName
	 *            the new prod name
	 */
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	/**
	 * Gets the addtime.
	 * 
	 * @return the addtime
	 */
	public Date getAddtime() {
		return this.addtime;
	}

	/**
	 * Sets the addtime.
	 * 
	 * @param addtime
	 *            the new addtime
	 */
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	/**
	 * Gets the memo.
	 * 
	 * @return the memo
	 */
	public String getMemo() {
		return this.memo;
	}

	/**
	 * Sets the memo.
	 * 
	 * @param memo
	 *            the new memo
	 */
	public void setMemo(String memo) {
		this.memo = memo;
	}

}