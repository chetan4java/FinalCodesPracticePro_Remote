<html>
<head>
<style type="text/css">
.div-table{
  display:table;         
  width:auto;         
  background-color:#eee;         
  border:1px solid  #666666;         
  border-spacing:5px;/*cellspacing:poor IE support for  this*/
}
.div-table-row{
  display:table-row;
  width:auto;
  clear:both;
}
.div-table-col{
  float:left;/*fix for  buggy browsers*/
  display:table-column;         
  width:200px;         
  background-color:#ccc;  
}
</style>

</head>
<body>
  <form id="form1">
      <div class="div-table">
             <div class="div-table-row">
                <div class="div-table-col" align="center">Customer ID</div>
                <div  class="div-table-col">Customer Name</div>
                <div  class="div-table-col">Customer Address</div>
             </div>
            <div class="div-table-row">
                  <div class="div-table-col">001</div>
                <div class="div-table-col">002</div>
                <div class="div-table-col">003</div>
            </div>
            <div class="div-table-row">
                <div class="div-table-col">xxx</div>
                <div class="div-table-col">yyy</div>
                <div class="div-table-col">www</div>
           </div>
            <div class="divRow">
                <div class="div-table-col">ttt</div>
                <div class="div-table-col">uuu</div>
                <div class="div-table-col">Mkkk</div>
           </div>

      </div>
  </form>
</body>
</html>
