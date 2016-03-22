<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

function checkForSpacesAtBegining(id,fieldName)
{

	 

	   
		
       var flag=0;
       var strText =document.getElementById(id).value;
       if (strText!="")
       {
				       var strArr = new Array();
				       strArr = strText.split("");
		
		       if(strArr[0]==" ") // this is the the key part. you can do whatever you want here!
		       {
		     			  flag=1;
		       }


       }

       if(document.getElementById(id).value=="" || flag == 1 )
       {       alert(fieldName+" shouldn't be blank or contain blank space at the Begining !!");
       document.getElementById(id).value="";
       document.getElementById(id).focus();
               return false;
       }
       return true;
}

function isSpecialChar(id)
{
	
	val =parseFloat("47B");

	alert(" is "+val);

	
	if (!isNaN(val))
	{
	    alert("Please Enter Correct Address , It should not contains only zero8y");
		document.frm.address.focus();
					return (false);

	}
	
	String=document.getElementById(id).value;
	var i;

	var text="!@#$%^&*()!@";
	for(i=0;i<String.length;i++)
	{
		var charval=String.charAt(i);
		if(text.indexOf(charval)==-1)
			alert("sp char are not alloed ");
		return false;
	}
	return true;
}



function checkdate()
{
var firstDate=new Date("1/9/2012");
var secondDate=new Date("2/12/2012");


if(firstDate.getTime()==secondDate.getTime())
	{
	alert("both dates are samesfdg ");
	}
else if(firstDate.getTime()<secondDate.getTime())
{
alert("first date is less ");
}else
	{
alert("second date is greater ,, ");
	}

 
	}

</script>
</head>
<body>
	<form>


		<input type="text" name="address" id="address"> <input
			type="submit" onclick="checkdate()">
	</form>
</body>
</html>