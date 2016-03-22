<!-- 
	Created By : Chetan Badgujar
	Problem Statement : In this PAGE  i have created the function to change the color of 
	Visited link out of list of links..  
	

 --><!
 
 
 DOCTYPE html>
<html>
<head>
 <style>
/* unvisited link */
a:link {
   outline: brown solid black;
	color: green;
}

/* visited link */
a:visited {
	color: black;
}

/* mouse over link */
a:hover {
	color: red;
}

/* selected link */
a:active {
	color: yellow;
}
</style>  

<script type="text/javascript">
	var lastClickedLink = null;
	function rememberLink() {
		if (lastClickedLink) {
			lastClickedLink.style.color = "";
		}
		lastClickedLink = this;
		this.style.color = "red";
	}
	function makeMemory() {
 		for (var i = 0; i < document.links.length; i++) {
			var link = document.links[i];
			if (link.addEventListener) {
				link.addEventListener("click", rememberLink, false);
			} else if (link.attachEvent) {
				link.attachEvent("onclick", rememberLink);
			} else {
				link.onclick = rememberLink;
			}
		}
	}
</script>
</head>
<body onload="makeMemory()" >

	<p>
		Mouse over and click the link: <a href="home.jsp" >w3sctyhools.com</a>
	</p>
	<p>
		Mouse over and click the link: <a href="c.com" >fg.com</a>
	</p>
	<p>
		Mouse over and click the link: <a href="d.com" ">wfg3schools.com</a>
	</p>
	<p>
		Mouse over and click the link: <a href="e.com">fg.com</a>
	</p>
	<p>
		Mouse over and click the link: <a href="f.com">w3scfghools.com</a>
	</p>
</body>
</html>
