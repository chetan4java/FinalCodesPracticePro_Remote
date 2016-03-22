<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function DeleteClick(id)
{
alert("hello from delete"+id);
 
var r=confirm('Are you sure you want to delete thid record ');
if (r==true) 
{
	 var frmNam=document.frm;


	 
	 frmNam.method="get" ;
		// frmNam.SEARCHBY.value="TXNO";
	// alert("val is "+frmNam.SEARCHBY.value);
		 frmNam.action="viewPostalSale_preprocess.doo?saleby=post&operation=delete&id="+id;
		 alert("action is "+frmNam.action)
			frmNam.submit();

} 
else 
	return false ; 
	 }
function delclick(id){
	alert("hi from delclick "+id);
	
}
</script>
</head>
<body>
	<form name="frm">
		<%out.println("hiiii"); %>

		<a href="" onclick="return DeleteClick(<%= 4%>)">ggg</a>
	</form>
</html>