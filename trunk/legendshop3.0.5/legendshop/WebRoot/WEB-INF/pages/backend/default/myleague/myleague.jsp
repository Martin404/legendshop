<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/options.tld" prefix="option" %>
<%@ include file="/WEB-INF/pages/common/back-common.jsp"%>
<html>
    <head>
        <title>${sessionScope.shopName} 加盟商城</title>
        <script src="<ls:templateResource item='/common/js/jquery.js'/>" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/common/js/jquery.validate.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/common/default/css/indexJpgForm.css" />
        <script language="javascript">
    $.validator.setDefaults({
    });

    $(document).ready(function() {
        jQuery("#form1").validate({
            rules: {
        	displayOrder: "number"
        },
        messages: {
        	displayOrder: {
			number: "显示顺序必须为数字"
            }
        }
    });
        
      $("#col1 tr").each(function(i){
      if(i>0){
         if(i%2 == 0){
             $(this).addClass('even');
         }else{    
              $(this).addClass('odd'); 
         }   
    }
     });   
         $("#col1 th").addClass('sortable'); 
});
</script>
</head>
    <body class="bodymargin">
        <form action="${pageContext.request.contextPath}/admin/myleague/update${applicationScope.WEB_SUFFIX}" method="post" id="form1">
            <input id="id" name="id" value="${bean.id}" type="hidden">
            <div align="center">
          <table class="${tableclass}" style="width: 100%">
	    <thead>
	    	<tr><td><a href="<ls:url address='/admin/index'/>" target="_parent">首页</a> &raquo; 商城管理  &raquo; <a href="${pageContext.request.contextPath}/admin/myleague/query${applicationScope.WEB_SUFFIX}">加盟商城管理</a> &raquo;  加盟商城</td></tr>
	    </thead>
	    </table>
            <table  align="center" class="${tableclass}" id="col1">
                <thead>
                    <tr class="sortable">
                        <th colspan="2">
                            <div align="center">
                                                                                  加盟商城
                            </div>
                        </th>
                    </tr>
                </thead>
      <tr style="display: none">
        <td>
          <div align="center">UserId: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="userId" id="userId" value="${bean.userId}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="right">加盟商城<font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="friendId" id="friendId" value="${bean.friendId}" readonly="readonly"/></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="right">加盟商城名称</div>
       </td>
        <td>
           <p><input type="text" name="friendName" id="friendName" value="${bean.friendName}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="right">显示顺序（数字，越小越靠前）</div>
       </td>
        <td>
           <p><input type="text" name="displayOrder" id="displayOrder" value="${bean.displayOrder}" /></p>
        </td>
      </tr>
	  <tr>
                    <td colspan="2">
                        <div align="center">
                            <input type="submit" value="提交" />
                            <input type="reset" value="重置" />
                            <input type="button" value="返回"
                                onclick="window.location='${pageContext.request.contextPath}/admin/myleague/query${applicationScope.WEB_SUFFIX}'" />
                        </div>
                    </td>
                </tr>
            </table>
           </div>
        </form>
    </body>
</html>

