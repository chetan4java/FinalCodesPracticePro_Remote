<HTML>
<HEAD>
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta name="Author" content="Pushpendra: <engineer.sw@ gmail.com>
">
<meta http-equiv="Content-Type"
	content="text/html; charset=windows-1252">
<title>Pushpendra:<engineer.sw @gmail.com>: Java
	Script Strong Password Validtions</title>

<script language="javascript">
function isStrongPassword()
{

   var control = document.form1.password;
   var myString= control.value;


   var Stringlen = myString.length;
   var ValidateDigits = /[^0-9]/g;
   var ValidateSpChar = /[a-zA-Z0-9]/g;
   var ValidateChar = /[^a-zA-Z]/g;

   var digitString = myString.replace(ValidateDigits , "");
   var specialString = myString.replace(ValidateSpChar, "");
   var charString = myString.replace(ValidateChar, "");

   if(Stringlen < 8)
   {
   alert("Passwords must be at least 8 characters");
   control.value="";
   control.focus();
   return false;
   }
   if(specialString < 1)
   {
   alert("Passwords must include at least 1 special (#,@,&,$ etc) characters");
   control.value="";
   control.focus();
   return false;
   }
   if(digitString < 1)
   {
   alert("Passwords must include at least 1 numeric characters");
   control.value="";
   control.focus();
   return false;
   }
   return;
}
</script>

</HEAD>
<BODY>

	<P>
	<h2>Registration</h2>
	<form id=form1 name=form1>
		<table>
			<tr>
				<td>Login:</td>
				<td><INPUT id=login name=login size="20"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><INPUT id=password name=password size="20"></td>
			</tr>
		</table>
		<P>
			<INPUT id=register type=button value=Register name=register
				onclick='javascript:isStrongPassword()'>
		</P>
	</form>
</BODY>
</HTML>