<!DOCTYPE HTML>
<html>
<head>
<title>Print Preview</title>
<script type="text/javascript">
 function AddRemoveItem(fromObj, toObj) 
 { 
     for (var selIndex = fromObj.length - 1; selIndex >= 0; selIndex--) 
     { 
        // Is this option selected? 
        if (fromObj.options[selIndex].selected) 
        { 
          // Get the text and value for this option. 
          var newText  = fromObj.options[selIndex].text; 
          var newValue = fromObj.options[selIndex].value; 

          // Create a new option, and add to the other select box. 
          var newOption = new Option(newText, newValue) 
          toObj[toObj.length] = newOption; 

          // Delete the option in the first select box. 
         fromObj[selIndex] = null; 
        } 
     } 
 } 


 function selectAllListItems(chkObj,listItems){
		var multi=document.getElementById(listItems);
		if(chkObj.checked)
			for(i=0;i<multi.options.length;i++)
			multi.options[i].selected=true;
		else
			for(i=0;i<multi.options.length;i++)
			multi.options[i].selected=false;
			
		
	}


 </script>

</head>
<body>
	<form>
		<table cellpadding=0 cellspacing=0>
			<tr>
				<th colspan=3></th>
			</tr>
			<tr>
				<th>Old Branches</th>
				<th>Action</th>
				<th>New Branches</th>
			</tr>
			<tr>
				<td><input type="checkbox"
					onclick="selectAllListItems(this,'oldBranchItem');" />Select All</td>
				<td></td>
				<td><input type="checkbox"
					onclick="selectAllListItems(this ,'newBranchItem');" />Select All</td>
			</tr>
			<tr>
				<td><select name='oldbranch' size=10 multiple
					id="oldBranchItem">
						<option value='1'>ECE</option>
						<option value='2'>EEE</option>
						<option value='3'>EE&I</option>
						<option value='4'>CSE</option>
						<option value='5'>IT</option>
						<option value='6'>ME</option>
						<option value='7'>Safety</option>
						<option value='8'>Petroleum</option>
						<option value='9'>Civil</option>
						<option value='10'>CS</option>
						<option value='11'>Instrumentation</option>
						<option value='12'>Economics</option>
						<option value='13'>Biotech</option>
						<option value='14'>Information Security</option>
						<option value='15'>CS with Maths</option>
				</select></td>
				<td align="center"><INPUT TYPE="BUTTON" VALUE=">>"
					ONCLICK="AddRemoveItem(oldbranch,newbranch);"></br> <INPUT
					TYPE="BUTTON" class="list_container" VALUE="<<" ONCLICK="AddRemoveItem(newbranch,oldbranch);">
				</td>
				<td><select name='newbranch' class="list_container" size=10
					multiple id="newBranchItem" style="width: 230px">
				</select></td>
			</tr>
		</table>
	</form>
</body>
</html>