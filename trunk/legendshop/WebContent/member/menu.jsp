<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@page import="bingosoft.jcf.service.impl.ContextServiceLocator"%>
<%@ include file="/common/jsp/common.jsp"%>
<%@ include file="/common/jsp/taglib.jsp"%>
<%@ taglib uri="/WEB-INF/tld/auth.tld" prefix="auth"%>
<html>
	<HEAD>
		<TITLE>menu</TITLE>
		<link title=Style href="${root}/common/css/left.css" type=text/css
			rel=stylesheet>
		<script type="text/javascript">

function show(con)
{

divroll = document.getElementsByTagName("DIV"); 
  for(i=0; i<divroll.length; i++) 
  {
    whichEl = divroll[i];
    idtag = con; 
    if (whichEl.id == idtag) 
    {
       if (whichEl.style.display == "none") 
             whichEl.style.display = "block";  
       else 
         whichEl.style.display = "none"; 
    }
	else
	    whichEl.style.display = "none";
  } 
}

</SCRIPT>
	</HEAD>
	<BODY>
		<auth:auth ifAnyGranted="F_SYSTEM">
			<TABLE width=140 align=center cellPadding=0 cellSpacing=0
				bgcolor="#ECF4EF">
				<TBODY>
					<TR>
						<TD width="100%" height=19 align="left"
							background=${root}/common/images/menu_bg.gif class=menu_title
							onClick="show('content1')" onMouseMove="style.cursor='pointer'"
							onmouseover="this.className='menu_title2';"
							onmouseout="this.className='menu_title';">
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<span>系统管理</span>
						</TD>
					</TR>
					<TR>
						<TD width="100%" bgcolor="#ECF4EF">
							<DIV id="content1" style="display: block">
								<TABLE width="100%" align=center cellPadding=0 cellSpacing=0
									bgcolor="#ECF4EF">
									<TBODY>
										<TR>
											<TD class=chinese_text height=30 align="center">
												<a href="userMessage.jsp" target=main class="style1">登录用户管理</a>
											</TD>
										</TR>
										<TR>
											<TD width="100%" height=30 align="center" bgcolor="#ECF4EF"
												class=chinese_text>
												<a href="${root}/system/userDetailList.do" target="main"
													class="style1">用户信息管理</a>
											</TD>
										</TR>
										<TR>
											<TD class=chinese_text height=30 align="center">
												<a href="${root}/pages/loginhistory/loginHistoryList.jsp"
													target=main class="style1">用户登录历史</a>
											</TD>
										</TR>
										<TR>
											<TD class=chinese_text height=30 align="center">
												<a href="${root}/pages/loginhistory/loginHistorySum.jsp"
													target=main class="style1">登录历史统计</a>
											</TD>
										</TR>
								</TABLE>
							</DIV>
						</TD>
					</TR>

				</TBODY>
			</TABLE>
		</auth:auth>

		<TABLE width=140 align=center cellPadding=0 cellSpacing=0
			bgcolor="#ECF4EF">
			<TBODY>
				<TR>
					<TD width="100%" height=19 align="left"
						background=${root}/common/images/menu_bg.gif class=menu_title
						onClick="show('content1')" onMouseMove="style.cursor='pointer'"
						onmouseover="this.className='menu_title2';"
						onmouseout="this.className='menu_title';">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span>商品管理</span>
					</TD>
				</TR>

				<TR>
					<TD width="100%" bgcolor="#ECF4EF">
						<DIV id="content1" style="display: block">
							<TABLE width="100%" align=center cellPadding=0 cellSpacing=0
								bgcolor="#ECF4EF">
								<TBODY>
									<TR>
										<TD class=chinese_text height=30 align="center">
											<a href="${root}/admin/sortList.do" target=main
												class="style1">类型管理</a>
										</TD>
									</TR>
									<TR>
										<TD width="100%" height=30 align="center" bgcolor="#ECF4EF"
											class=chinese_text>
											<a href="${root}/admin/hwList.do" target="main"
												class="style1">商品管理</a>
										</TD>
									</TR>
									<TR>
										<TD class=chinese_text height=30 align="center">
											<a href="${root}/admin/order/adminOrder.jsp" target=main
												class="style1">订单管理</a>
										</TD>
									</TR>
									<TR>
										<TD width="100%" align="center" height=30 bgcolor="#ECF4EF"
											class="style1">
											<%--    优先读取还没有处理的消息--%>
											<A href="${root}/admin/userCommentList.do?status=0"
												target="main" class="style1">留言管理</A>
										</TD>
									</TR>

									<TR>
										<TD width="100%" align="center" height=30 bgcolor="#ECF4EF"
											class="style1">
											<%--    优先读取还没有处理的消息 admin/search/hotsearch.jsp--%>
											<A href="${root}/admin/hotsearch/query.c" target="main"
												class="style1">热点搜索</A>
										</TD>
									</TR>
									<TR>
										<TD width="100%" height=30 align="center" bgcolor="#ECF4EF">
											<A href="${root}/admin/indexjpgList.do" target="main"
												class="style1">主页图片管理</A>
										</TD>
									</TR>
							</TABLE>
						</DIV>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE width="140" align=center cellPadding=0 cellSpacing=0
			bgcolor="#ECF4EF">
			<TBODY>
				<TR>
					<TD width="100%" height=19 align="left"
						background=${root}/common/images/menu_bg.gif class=menu_title
						onClick="show('content2')" onMouseMove="style.cursor='pointer'"
						onmouseover="this.className='menu_title2';"
						onmouseout="this.className='menu_title';">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span>信息管理</span>
					</TD>
				</TR>
				<TR>
					<TD width="100%" bgcolor="#ECF4EF">
						<DIV id="content2" style="display: none">
							<TABLE width="100%" align=center cellPadding=0 cellSpacing=0
								bgcolor="#ECF4EF">
								<TBODY>
                                    <TR>
                                        <TD class=chinese_text height=30 align="center">
                                            <%-- 
                       <A href="${root}/admin/shopDetailList.do" target="main" class="style1">店铺信息设置</A>
                       --%>
                                            <a href="${root}/admin/shopDetail/query.c" target="main"
                                                class="style1">店铺管理</a>
                                        </TD>
                                    </TR>
									<TR>
										<TD class=chinese_text height=30 align="center">
											<A href="${root}/admin/news/query.c" target="main"
												class="style1">新闻管理</A>
										</TD>
									</TR>
									<TR>
										<%--admin/gg.jsp --%>
										<TD width="100%" height=30 align="center" bgcolor="#ECF4EF">
											<A href="${root}/admin/pub/query.c" target="main"
												class="style1">公告管理</A>
										</TD>
									</TR>
									<TR>
										<TD width="100%" height=30 align="center" bgcolor="#ECF4EF">
											<A href="${root}/admin/logo/query.c" target="main"
												class="style1">Logo管理</A>
										</TD>
									</TR>
                                    <TR>
                                    <TD width="100%" align="center" height=30 bgcolor="#ECF4EF"
                                            class="style1">
                                            <A href="${root}/admin/advertisement/query.c" target="main"
                                                class="style1">广告管理</A>
                                        </TD>
                                    </TR>
                                    <TR>
										<TD width="100%" align="center" height=30 bgcolor="#ECF4EF"
											class="style1">
											<A href="${root}/admin/myleague/query.c" target="main"
												class="style1">加盟管理</A>
										</TD>
									</TR>
									<TR>
										<TD width="100%" align="center" height=30 bgcolor="#ECF4EF"
											class="style1">
											<A href="${root}/admin/ad/query.c" target="main"
												class="style1">链接管理</A>
										</TD>
									</TR>
							</TABLE>
						</DIV>
					</TD>
				</TR>
			</TBODY>
		</TABLE>

	</BODY>
</html>
