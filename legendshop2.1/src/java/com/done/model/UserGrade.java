package com.done.model;

/**
 * UserGrade generated by MyEclipse Persistence Tools
 */

public class UserGrade implements java.io.Serializable {

	// Fields

	private Integer gradeId;

	private String name;

	private Integer maxSortSize;

	private Integer maxNsortSize;

	private Integer maxHw;

	// Constructors

	/** default constructor */
	public UserGrade() {
	}

	/** minimal constructor */
	public UserGrade(Integer gradeId) {
		this.gradeId = gradeId;
	}

	/** full constructor */
	public UserGrade(Integer gradeId, String name, Integer maxSortSize,
			Integer maxNsortSize, Integer maxHw) {
		this.gradeId = gradeId;
		this.name = name;
		this.maxSortSize = maxSortSize;
		this.maxNsortSize = maxNsortSize;
		this.maxHw = maxHw;
	}

	// Property accessors

	public Integer getGradeId() {
		return this.gradeId;
	}

	public void setGradeId(Integer gradeId) {
		this.gradeId = gradeId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMaxSortSize() {
		return this.maxSortSize;
	}

	public void setMaxSortSize(Integer maxSortSize) {
		this.maxSortSize = maxSortSize;
	}

	public Integer getMaxNsortSize() {
		return this.maxNsortSize;
	}

	public void setMaxNsortSize(Integer maxNsortSize) {
		this.maxNsortSize = maxNsortSize;
	}

	public Integer getMaxHw() {
		return this.maxHw;
	}

	public void setMaxHw(Integer maxHw) {
		this.maxHw = maxHw;
	}

}