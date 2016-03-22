<!DOCTYPE html>
<html lang="en">
<head>
<title id='Description'>This example shows how to enable sorting
	and sort by a column.</title>
<link rel="stylesheet" href="../../jqwidgets/styles/jqx.base.css"
	type="text/css" />
<script type="text/javascript" src="../../scripts/jquery-1.10.2.min.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxmenu.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxgrid.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxgrid.sort.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxgrid.filter.js"></script>
<script type="text/javascript"
	src="../../jqwidgets/jqxgrid.selection.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxpanel.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxcheckbox.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxlistbox.js"></script>
<script type="text/javascript" src="../../jqwidgets/jqxdropdownlist.js"></script>
<script type="text/javascript" src="../../scripts/demos.js"></script>
<script type="text/javascript">
        $(document).ready(function () {
            var url = "../sampledata/orders.xml";
            // prepare the data
            var source =
            {
                datatype: "xml",
                datafields: [
                    { name: 'ShippedDate', map: 'm\\:properties>d\\:ShippedDate', type: 'date' },
                    { name: 'Freight', map: 'm\\:properties>d\\:Freight', type: 'float' },
                    { name: 'ShipName', map: 'm\\:properties>d\\:ShipName', type: 'string' },
                    { name: 'ShipAddress', map: 'm\\:properties>d\\:ShipAddress', type: 'string' },
                    { name: 'ShipCity', map: 'm\\:properties>d\\:ShipCity', type: 'string' },
                    { name: 'ShipCountry', map: 'm\\:properties>d\\:ShipCountry', type: 'string' }
                ],
                root: "entry",
                record: "content",
                id: { name: "OrderID", map: "m\\:properties>d\\:OrderID" },
                url: url,
                sortcolumn: 'ShipName',
                sortdirection: 'asc'
            };
            var dataAdapter = new $.jqx.dataAdapter(source);
            // create jqxgrid.
            $("#jqxgrid").jqxGrid(
            {
                width: 850,
                height: 450,
                source: dataAdapter,
                sortable: true,
                filterable: true,
                altrows: true,
                columns: [
                  { text: 'Ship Name', datafield: 'ShipName', width: 250 },
                  { text: 'Shipped Date', datafield: 'ShippedDate', width: 100, cellsformat: 'yyyy-MM-dd' },
                  { text: 'Freight', datafield: 'Freight', width: 80, cellsformat: 'F2', cellsalign: 'right' },
                  { text: 'Ship Address', datafield: 'ShipAddress', width: 350 },
                  { text: 'Ship City', datafield: 'ShipCity', width: 100 },
                  { text: 'Ship Country', datafield: 'ShipCountry', width: 101 }
                ]
            });
            $('#events').jqxPanel({ width: 300, height: 80});
            $("#jqxgrid").on("sort", function (event) {
                $("#events").jqxPanel('clearcontent');
                var sortinformation = event.args.sortinformation;
                var sortdirection = sortinformation.sortdirection.ascending ? "ascending" : "descending";
                if (!sortinformation.sortdirection.ascending && !sortinformation.sortdirection.descending) {
                    sortdirection = "null";
                }
                var eventData = "Triggered 'sort' event <div>Column:" + sortinformation.sortcolumn + ", Direction: " + sortdirection + "</div>";
                $('#events').jqxPanel('prepend', '<div style="margin-top: 5px;">' + eventData + '</div>');
            });
            $('#clearsortingbutton').jqxButton({ height: 25});
            $('#sortbackground').jqxCheckBox({checked: true, height: 25});
            // clear the sorting.
            $('#clearsortingbutton').click(function () {
                $("#jqxgrid").jqxGrid('removesort');
            });
            // show/hide sort background
            $('#sortbackground').on('change', function (event) {
                $("#jqxgrid").jqxGrid({ showsortcolumnbackground: event.args.checked });
            });
        });
    </script>
</head>
<body class='default'>
	<div id='jqxWidget'
		style="font-size: 13px; font-family: Verdana; float: left;">
		<div id="jqxgrid"></div>
		<div id="eventslog" style="margin-top: 30px;">
			<div style="float: left; margin-right: 10px;">
				<input value="Remove Sort" id="clearsortingbutton" type="button" />
				<div style="margin-top: 10px;" id='sortbackground'>Sort
					Background</div>
			</div>
			<div style="margin-left: 100px; float: left;">
				Event Log:
				<div style="border: none;" id="events"></div>
			</div>
		</div>
	</div>
</body>
</html>