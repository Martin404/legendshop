<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/tld/c.tld" prefix="c"%>
<%@ include file="/pages/common/back-common.jsp"%>
<html>
    <head>
        <title>创建 VisitLog</title>
        <script src="${pageContext.request.contextPath}/common/js/jquery.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/common/js/jquery.validate.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/common/css/indexJpgForm.css" />
        <script language="javascript">
    $.validator.setDefaults({
    });

    $(document).ready(function() {
    jQuery("#form1").validate({
            rules: {
            banner: {
                required: true,
                minlength: 5
            },
            url: "required"
        },
        messages: {
            banner: {
                required: "Please enter banner",
                minlength: "banner must consist of at least 5 characters"
            },
            url: {
                required: "Please provide a password"
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
    <body>
        <form action="${pageContext.request.contextPath}/admin/visitLog/save${applicationScope.WEB_SUFFIX}" method="post" id="form1">
            <input id="visitId" name="visitId" value="${bean.visitId}" type="            <div align="center">
            <table border="0" align="center" class="${tableclass}" id="col1">
                <thead>
                    <tr class="sortable">
                        <th colspan="2">
                            <div align="center">
                                创建 VisitLog
                            </div>
                        </th>
                    </tr>
                </thead>
      <tr>
        <td>
          <div align="center">Ip: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="ip" id="ip" value="${bean.ip}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Country: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="country" id="country" value="${bean.country}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Area: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="area" id="area" value="${bean.area}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">UserName: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="userName" id="userName" value="${bean.userName}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">ShopName: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="shopName" id="shopName" value="${bean.shopName}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">ProductName: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="productName" id="productName" value="${bean.productName}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Page: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="page" id="page" value="${bean.page}" /></p>
        </td>
      </tr>
     <tr>
        <td>
          <div align="center">Date: <font color="ff0000">*</font></div>
       </td>
        <td>
           <p><input type="text" name="date" id="date" value="${bean.date}" /></p>
        </td>
      </tr>

                <tr>
                    <td colspan="2">
                        <div align="center">
                            <input type="submit" value="添加" />
                            <input type="reset" value="重置" />
                            <input type="button" value="返回"
                                onclick="window.location='${pageContext.request.contextPath}/admin/visitLog/query${applicationScope.WEB_SUFFIX}'" />
                        </div>
                    </td>
                </tr>
            </table>
           </div>
        </form>
    </body>
</html>

