<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript" charset="utf8" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/js/bootstrap-dialog.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.14.0/jquery.validate.min.js"></script>


<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css"/>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap3-dialog/1.34.7/css/bootstrap-dialog.min.css"/>



 
<!-- jqGrid CSS -->
<!-- <link rel="stylesheet" href="http://YOURJQGRIDURL/jqGrid-4.5.2/css/ui.jqgrid.css" type="text/css" /> -->
 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" />

 
<!-- The jqGrid language file code-->
<!-- <script type="text/javascript" src="http://YOURJQGRIDURL/jqGrid-4.5.2/js/i18n/grid.locale-en.js" /> -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/i18n/grid.locale-en.js" />
<!-- The atual jqGrid code -->
<!-- <script type="text/javascript" src="http://YOURJQGRIDURL/jqGrid-4.5.2/js/jquery.jqGrid.src.js" /> -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/jquery.jqGrid.src.js" />

<script type="text/javascript">
jQuery(document).ready(function() {
    $("#list").jqGrid({
            url : "data.json",
            datatype : "json",
            colNames : [ 'Id', 'FirstName', 'LastName', 'City', 'State' ],
            colModel : [ {
                    name : 'id',
                    index : 'id',
                    width : 100
            }, {
                    name : 'firstName',
                    index : 'firstName',
                    width : 150,
                    editable : true
            }, {
                    name : 'lastName',
                    index : 'lastName',
                    width : 150,
                    editable : true
            }, {
                    name : 'city',
                    index : 'city',
                    width : 100,
                    editable : true
            }, {
                    name : 'state',
                    index : 'state',
                    width : 100,
                    editable : true
            } ],
            pager : '#pager',
            rowNum : 10,
            rowList : [ 10, 20, 30 ],
            sortname : 'invid',
            sortorder : 'desc',
            viewrecords : true,
            gridview : true,
            caption : 'Data Report',
            jsonReader : {
                    repeatitems : false,
            },
            editurl : "GridServlet"
    });
    jQuery("#list").jqGrid('navGrid', '#pager', {
            edit : true,
            add : true,
            del : true,
            search : true
    });
});

</script>

<title>Welcome</title>

</head>
<body>

<%-- <%@include file="../../include/commonHeader.jsp" %> --%>

 <table id="list">
                <tr>
                        <td />
                </tr>
        </table>
        <div id="pager"></div>


Welcome page

</body>
</html>