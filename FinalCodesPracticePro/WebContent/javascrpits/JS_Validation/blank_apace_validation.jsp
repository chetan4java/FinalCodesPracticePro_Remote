<html>
<head>
<TITLE></TITLE>
<script>
function checkForSpacesAtBegining()
{

       var flag=0;
       var strText = document.f1.title.value;
       if (strText!="")
       {
       var strArr = new Array();
       strArr = strText.split("");

       if(strArr[0]==" ") // this is the the key part. you can do whatever you want here!
       {
       flag=1;
       }


       }

       if(document.f1.title.value=="" || flag == 1 )
       {        alert("shouldn't be blank or contain blank space at the Bewgining!!");
               document.f1.title.value="";
               document.f1.title.focus();
               return false;
       }
       return true;
}
</script>
</head>
<body>
	<form name="f1">
		<input type="text" name="title" id="title" value=""> <input
			type="button" name="button" id="button" value="button"
			onclick="return checkForSpacesAtBegining()">
	</form>
</body>
</html>