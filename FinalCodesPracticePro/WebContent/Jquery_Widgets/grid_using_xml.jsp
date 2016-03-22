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
				var url = "customers.xml";
				// prepare the data
				var source = {
					datatype : "xml",
					datafields : 
								[
									 {	name : 'CustomerID', map : '[CustomerID]'},
									 {	name : 'Name',	map : '[Name]'} 
								],
					root : "Customers",
					record : "Customer",
					url : url
				};
				var dataAdapter = new $.jqx.dataAdapter(source);

				 $("#jqxgrid").jqxGrid(
						 {
						 width: 400,
						 source: dataAdapter,
						 columns: [
						 { text: 'ID', datafield: 'CustomerID', width: 250 },
						 { text: 'Name', datafield: 'Name', width: 150 }
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