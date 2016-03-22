<%@ page isELIgnored="false" %>
<!DOCTYPE html ">
<html  >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Embedding a PDF using static HTML markup: Sized element</title>

<!-- This example created for PDFObject.com by Philip Hutchison (www.pipwerks.com) -->

<!-- CSS for basic page styling, not related to example -->
<link href="css/examples.css" rel="stylesheet" type="text/css" />

<style type="text/css">
<!--

#pdf {
	width: 50%;
	height: 300px;
	margin: 2em auto;
	border: 10px solid #6699FF;
}

#pdf p {
   padding: 1em;
}

#pdf object {
   display: block;
   border: solid 1px #666;
}

-->
</style>

</head>

<body>

<h1>Embedding a PDF using static HTML markup: Sized element</h1>

<p>PDFs can be embedded inside page elements.  This page has a PDF embedded inside a DIV set to 50% width and 300px height, centered on the page.</p>

<div id="pdf">
<object	data="${pageContext.request.contextPath}/PDF_Object_demos/pdf/Hashing.pdf#toolbar=1&amp;navpanes=0&amp;scrollbar=1&amp;page=1&amp;view=FitH" 
        type="application/pdf" 
        width="100%" 
        height="100%">

<p>It appears you don't have a PDF plugin for this browser. No biggie... you can <a href="/pdf/sample.pdf">click here to download the PDF file.
<br>context path is : ${pageContext.request.contextPath}</a></p>
<br>requestURI : ${pageContext.request.requestURI}
<br>requestURL : ${pageContext.request.requestURL }
</object>
</div>

<p><a href="/">&laquo; Return to PDFObject home</a></p>

</body>
</html>
