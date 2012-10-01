/*
 * 
 * LegendShop 多用户商城系统
 * 
 *  版权所有,并保留所有权利。
 * 
 */
package com.legendshop.business.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.legendshop.business.common.page.BackPage;
import com.legendshop.business.common.page.FowardPage;
import com.legendshop.core.UserManager;
import com.legendshop.core.base.AdminController;
import com.legendshop.core.constant.PathResolver;
import com.legendshop.core.constant.ProductTypeEnum;
import com.legendshop.core.dao.support.PageSupport;
import com.legendshop.core.helper.ResourceBundleHelper;
import com.legendshop.model.entity.Sort;
import com.legendshop.spi.controller.AbstractSortController;

/**
 * 产品分类控制器。.
 */
@Controller
@RequestMapping("/admin/sort")
public class SortAdminController extends AbstractSortController implements AdminController<Sort, Long> {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.legendshop.core.base.AdminController#query(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse,
	 * java.lang.String, java.lang.Object)
	 */
	@RequestMapping("/query")
	public String query(HttpServletRequest request, HttpServletResponse response, String curPageNO, Sort sort) {
		// 产品类型: 普通产品
		sort.setSortType(ProductTypeEnum.PRODUCT.value());
		PageSupport ps = querySort(request, response, curPageNO, sort);
		savePage(ps, request);
		request.setAttribute("sort", sort);
		return PathResolver.getPath(request, response, BackPage.SORT_LIST_PAGE);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.legendshop.core.base.AdminController#save(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse,
	 * java.lang.Object)
	 */
	@Override
	@RequestMapping("/save")
	public String save(HttpServletRequest request, HttpServletResponse response, Sort entity) {
		// 产品类型: 普通产品
		entity.setSortType(ProductTypeEnum.PRODUCT.value());
		parseSort(request, response, entity);
		saveMessage(request, ResourceBundleHelper.getSucessfulString());
		return PathResolver.getPath(request, response, FowardPage.SORT_LIST_QUERY);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.legendshop.core.base.AdminController#delete(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse,
	 * java.lang.Object)
	 */
	@Override
	@RequestMapping(value = "/delete/{id}")
	public String delete(HttpServletRequest request, HttpServletResponse response, @PathVariable Long id) {
		deleteSort(request, response, id);
		saveMessage(request, ResourceBundleHelper.getDeleteString());
		return PathResolver.getPath(request, response, FowardPage.SORT_LIST_QUERY);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.legendshop.core.base.AdminController#load(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	@RequestMapping(value = "/load")
	public String load(HttpServletRequest request, HttpServletResponse response) {
		return PathResolver.getPath(request, response, BackPage.SORT_EDIT_PAGE);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.legendshop.core.base.AdminController#update(javax.servlet.http.
	 * HttpServletRequest, javax.servlet.http.HttpServletResponse,
	 * java.lang.Object)
	 */
	@Override
	@RequestMapping(value = "/update/{id}")
	public String update(HttpServletRequest request, HttpServletResponse response, @PathVariable Long id) {
		checkNullable("sortId", id);
		Sort sort = sortService.getSortById(id);
		String result = checkPrivilege(request, UserManager.getUsername(request), sort.getUserName());
		if (result != null) {
			return result;
		}
		request.setAttribute("sort", sort);
		return PathResolver.getPath(request, response, BackPage.SORT_EDIT_PAGE);
	}

}
