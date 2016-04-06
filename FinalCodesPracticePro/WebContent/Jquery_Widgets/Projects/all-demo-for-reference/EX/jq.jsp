<html>
<head>
<title>Grid Test</title>
<script type="text/javascript" src="jquery.js"></script>
 <script type="text/javascript" src="jqxcore.js"></script>
<script type="text/javascript" src="jqxdata.js"></script>
<script type="text/javascript" src="jqxbuttons.js"></script>
<script type="text/javascript" src="jqxscrollbar.js"></script>
<script type="text/javascript" src="jqxgrid.js"></script>
<script type="text/javascript" src="jqxgrid.selection.js"></script>
<script type="text/javascript" src="jqxgrid.columnsresize.js"></script>
<script type="text/javascript" src="jqxdropdownlist.js"></script>
<script type="text/javascript" src="jqxlistbox.js"></script>
<script type="text/javascript" src="jqxgrid.edit.js"></script>
<script src="jquery.alerts.js" type="text/javascript"></script>
<link rel="stylesheet" href="styles/jqx.base.css" type="text/css" />
<link rel="stylesheet" href="styles/jqx.energyblue.css" type="text/css" />
<script type="text/javascript">
var source;
var array1 = [[1,2,3,4],[1,2,3,4],[1,2,3,4]];
var validationFunc =  function (cell, value) {
	var result = true;
	try {
		value = parseInt(value);
	} catch (E) {
		result =  {result: false, message: "Please enter a number between 0 and 100." };
	}
	
    if (value < 0 || value > 100) { 
    	result = {result: false, message: "Please enter a number between 0 and 100."};
    };
    return result;
};
        $(document).ready(function () {
            
            source =
            {
                localdata: array1,
                datatype: "array"
            };
            var dataAdapter = new $.jqx.dataAdapter(source, {
                loadComplete: function (array1) { },
            });
            
            
            $("#jqxgrid").jqxGrid(
            {
                width: 360,
                source: dataAdapter,
                editable: true,
                selectionmode : 'singlecell',
                columns: [	       		           	
        		           	{ text: "0", datafield: 0, width: 90, cellsalign: 'right', cellsformat: 'n', hideable: false, validation: validationFunc },
        		           	{ text: "1", datafield: 1, width: 90, cellsalign: 'right', cellsformat: 'n', hideable: false, validation: validationFunc },
        		           	{ text: "2", datafield: 2, width: 90,  cellsalign: 'right', cellsformat: 'n', hideable: true, validation: validationFunc },
        		           	{ text: "3", datafield: 3, width: 90,  cellsalign: 'right', cellsformat: 'n', hideable: true, validation: validationFunc },  ]
            });
        
        $("#button").unbind('click').click(function() {
        	
        	array1 = [[9,8,7,6],[9,8,7,6],[9,8,7,6]];
        	        	
        	source.localdata = array1;
	        $("#jqxgrid").jqxGrid({ source: source });
        	
        });
  });
</script>
</head>
<body>
	<input type="button" class="button" value="Button" id="button"  />
	<div id='jqxWidget'>
    	    <div id="jqxgrid"></div>
	</div>
</body>
</html>