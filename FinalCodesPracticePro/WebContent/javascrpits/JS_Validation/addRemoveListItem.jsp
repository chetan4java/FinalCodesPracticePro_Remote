<!doctype html>
<html>
<head>
<title>adding removing items from select box using JavaScript</title>


<script type="text/javascript">


//Function to Add selected item(s) into the destination box 
function MoveItem(fromObj, toObj) 
{ 
    for(var selIndex = 0 ; selIndex < fromObj.length ; selIndex++) 
    { 
        // Is this option selected? 
        if (fromObj.options[selIndex].selected) 
        { 
            // Get the text and value for this option. 
            var newText  = fromObj.options[selIndex].text; 
            var newValue = fromObj.options[selIndex].value; 
            // Create a new option, and add to the other select box. 
            var newOption = new Option(newText, newValue); 
            var isDuplicate = checkValue(newValue,toObj); 
            toObj[toObj.length] = newOption; 
        } 
    } 
} 

//Function to remove the selected item(s) from the present box 
function RemoveItem(fromObj) 
{ 
   for (var selIndex = fromObj.length - 1; selIndex >= 0; selIndex--) 
   { 
        // Is this option selected? 
        if (fromObj.options[selIndex].selected) 
        { 
            // Delete the option in the first select box. 
            fromObj[selIndex] = null; 
        } 
    } 
} 

//Checks the value before inserting into the box. 
//If it exists then it will remove it. 
function checkValue(newValue,toObj) 
{ 
    for(var sel = toObj.length -1 ; sel >= 0 ; sel--) 
    { 
        if(newValue == toObj.options[sel].value) 
        { 
            toObj[sel] = null 
        } 
    } 
} 

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
</script>

<style>
tr, select {
	background-color: #88aacc;
}

th {
	background-color: #224422;
	color: #ff0000;
}

body {
	background-color: #eeccaa;
}
</style>

</head>
<body>
	<h3>Manipulation of select box items using JavaScript</h3>
	<form>
		<table>
			<tr>
				<th>Using Two Functions</th>
				<th>Using Single Function</th>
			</tr>
			<tr>
				<td>
					<table cellpadding=0 cellspacing=0>
						<tr>
							<th>Existing items</th>
							<th>Action</th>
							<th>New items</th>
						</tr>
						<tr>
							<td><select name='existing' size=10 multiple>
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
							<td align="center"><INPUT TYPE='BUTTON' VALUE='Add'
								ONCLICK="MoveItem(existing,current);"><br> <INPUT
								TYPE='BUTTON' VALUE='Remove' ONCLICK="RemoveItem(current);">
							</td>
							<td><select name='current' size=10 multiple>
							</select></td>
						</tr>
					</table>
				</td>
				<td>
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
							<td><select name='oldbranch' size=10 multiple>
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
								TYPE="BUTTON" VALUE="<<" ONCLICK="AddRemoveItem(newbranch,oldbranch);">
							</td>
							<td><select name='newbranch' size=10 multiple>
							</select></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
<script type="text/javascript" src="move-items-checkbox.js"></script>
</html>