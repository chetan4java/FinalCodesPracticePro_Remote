<!DOCTYPE html>
<html lang="en">
<head>
<title>This example shows how to create a Grid from Array data.</title>
<link rel="stylesheet" href="jqwidgets/styles/jqx.base.css"
	type="text/css" />
<script type="text/javascript" src=" scripts/jquery-1.10.2.min.js"></script>

<script type="text/javascript" src="jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="jqwidgets/jqxmenu.js"></script>
<script type="text/javascript" src="jqwidgets/jqxgrid.js"></script>
<script type="text/javascript" src="jqwidgets/jqxgrid.selection.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
	// prpare data from xmll;;;;
				var data = [{ "empName": "test", "age": "67", "department": { "id": "1234", "name": "Sales" }, "author": "ravi"}];

				// prepare the data
				var source =
				{
				    datatype: "json",
				    datafields: [
				        { name: 'empName' },
				        { name: 'age' },
				        { name: 'id', map: 'department>id' },
				        { name: 'name', map: 'department>name' },
				        { name: 'author' }
				    ],
				    localdata: data
				};
				var dataAdapter = new $.jqx.dataAdapter(source);

				 $("#jqxgrid").jqxGrid(
						 {
						 width: 400,
						 source: dataAdapter,
						 columns: [
						 { text: 'Name', datafield: 'empName', width: 250 },
						 { text: 'age', datafield: 'age', width: 150 }
						 ]
						 });
				 
			});
</script>
</head>
<body class='default'>
	<div id='jqxWidget'
		style="font-size: 13px; font-family: Verdana; float: left;">
		<div id="jqxgrid"></div>
	</div>
</body>
</html>