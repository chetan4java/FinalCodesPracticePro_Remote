<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/styles/jqx.base.css" type="text/css" />
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript" src="http://www.jqwidgets.com/jquery-widgets-demo/jqwidgets/jqx-all.js"></script>
    <script type="text/javascript" src="generatedata.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var theme = '';
            // prepare the data
            var data = generatedata(200);
            var source =
            {
                localdata: data,
                datatype: "array",
                updaterow: function (rowid, rowdata, commit) {
                    // synchronize with the server - send update command
                    // call commit with parameter true if the synchronization with the server is successful 
                    // and with parameter false if the synchronization failder.
                    commit(true);
                },
                datafields:
                [
                    { name: 'firstname', type: 'string' },
                    { name: 'lastname', type: 'string' },
                    { name: 'productname', type: 'string' },
                    { name: 'available', type: 'bool' },
                    { name: 'quantity', type: 'number' },
                    { name: 'price', type: 'number' },
                    { name: 'date', type: 'date' }
                ]
            };
            var dataAdapter = new $.jqx.dataAdapter(source);
            // initialize jqxGrid
            $("#jqxgrid").jqxGrid(
            {
                width: 680,
                source: dataAdapter,
                editable: true,
                theme: theme,
                selectionmode: 'multiplecellsadvanced',
                columns: [
                  { text: 'First Name', columntype: 'textbox', datafield: 'firstname', width: 80 },
                  { text: 'Last Name', datafield: 'lastname', columntype: 'textbox', width: 80 },
                  { text: 'Product', columntype: 'dropdownlist', datafield: 'productname', width: 195 },
                  { text: 'Available', datafield: 'available', columntype: 'checkbox', width: 67 },
                  { text: 'Quantity', datafield: 'quantity', width: 70, cellsalign: 'right', columntype: 'numberinput',
                      validation: function (cell, value) {
                          if (value < 0 || value > 150) {
                              return { result: false, message: "Quantity should be in the 0-150 interval" };
                          }
                          return true;
                      },
                      createeditor: function (row, cellvalue, editor) {
                          editor.jqxNumberInput({ decimalDigits: 0, digits: 3 });
                      }
                  },
                  { text: 'Price', datafield: 'price', cellsalign: 'right', cellsformat: 'c2', columntype: 'numberinput',
                      validation: function (cell, value) {
                          if (value < 0 || value > 15) {
                              return { result: false, message: "Price should be in the 0-15 interval" };
                          }
                          return true;
                      },
                      createeditor: function (row, cellvalue, editor) {
                          editor.jqxNumberInput({ digits: 3 });
                      }
                  }
                ]
            });
            // events
            $("#jqxgrid").on('cellbeginedit', function (event) {
                var args = event.args;
                $("#cellbegineditevent").text("Event Type: cellbeginedit, Column: " + args.datafield + ", Row: " + (1 + args.rowindex) + ", Value: " + args.value);
            });
            $("#jqxgrid").on('cellendedit', function (event) {
                var args = event.args;
                $("#cellendeditevent").text("Event Type: cellendedit, Column: " + args.datafield + ", Row: " + (1 + args.rowindex) + ", Value: " + args.value);
            });
            $("#button").click(function () {
                $("#jqxgrid").jqxGrid('updatebounddata');
            });
        });
    </script>
</head>
<body class='default'>
    <div id='jqxWidget'>
        <div id="jqxgrid"></div>
        <div style="margin-top: 30px;">
            <div id="cellbegineditevent"></div>
            <div style="margin-top: 10px;" id="cellendeditevent"></div>
       </div>
       <input type="button" id="button" value="button" />
    </div>
</body>
</html>