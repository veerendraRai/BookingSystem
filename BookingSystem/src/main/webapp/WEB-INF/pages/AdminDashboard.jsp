<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Portal</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/jquery.jqGrid.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/js/i18n/grid.locale-en.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqgrid/4.6.0/css/ui.jqgrid.css">
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">

 <% String JsonValue = (String) request.getAttribute("JsonData"); %>

<script type="text/javascript">

$(document).ready(function(){
	
	console.log("document ready");
	jQuery("#list2").jqGrid({
		datatype: "json",
	   	colNames:['id','roomId', 'roomDesc', 'buildingName','wingDetail','floorDetail','availability'],
	   	colModel:[
	   		{name:'id',index:'id', width:55},
	   		{name:'roomId',index:'roomId', width:90},
	   		{name:'roomDesc',index:'roomDesc', width:100},
	   		{name:'buildingName',index:'buildingName', width:100, align:"right"},
	   		{name:'wingDetail',index:'wingDetail', width:80, align:"right"},
	   		{name:'floorDetail',index:'floorDetail', width:80, align:"right"}	,
	   		{name:'availability',index:'availability', width:80, align:"right"}	
	   	],
	   	rowNum:10,
	   	rowList:[10,20,30],
	   	pager: '#pager2',
	   	sortname: 'id',
	    viewrecords: true,
	    sortorder: "desc",
	    caption:"Room Detail",
	    shrinkToFit: true,
	    width :1200,
	    height:400,
	    search:true
	    
	    	 
	});
	
	var array = <%=JsonValue%>;
	for ( var key in array) {		
		jQuery("#list2").jqGrid('addRowData',key+1,array[key]);
		
	}
	
	/* grid.jqGrid('navGrid','#pager',{add:true,edit:false,del:false,search:true,refresh:true},
            {},{},{},{multipleSearch:true, multipleGroup:true, showQuery: true}); */

	
});


</script>
</head>
<body>

<table id="list2"></table>
<div id="pager2"></div>

</body>
</html>