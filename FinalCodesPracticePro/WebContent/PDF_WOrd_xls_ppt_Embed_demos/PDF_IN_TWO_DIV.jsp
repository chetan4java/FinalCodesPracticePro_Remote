<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Embedding a PDF using static HTML markup: Sized element</title>

<!-- This example created for PDFObject.com by Philip Hutchison (www.pipwerks.com) -->

<!-- CSS for basic page styling, not related to example -->
<link href="/css/examples.css" rel="stylesheet" type="text/css" />


<style type="text/css">
<!--

html {
	height: 100%;
	overflow: hidden;
}

body {
	margin: 0;
	padding: 0;
	height: 100%;
	background: #333;
}

#leftColumn {
	float: left;
	width: 49.75%;
	height: 100%;
	overflow: scroll;
	background: #FFF;
}

.content {
	padding: 2em;
}

.content em {
	color: #AAA;
}

#pdf {
	width: 49.75%;
	height: 100%;
	float: right;
	overflow: hidden;
	background: #FFF;
}

#pdf p {
	padding: 1em;
}

#pdf object {
	display: block;
}

-->
</style>

</head>

<body>

<div id="leftColumn">
<div class="content">
<h1>Embedding a PDF using static HTML markup: Sized element</h1>

<p>PDFs can be embedded inside page elements.  This page has a PDF embedded inside a DIV set to 49.5% width and 100% height, floated right.</p>
<p><a href="/">&laquo; Return to PDFObject home</a></p>
<p><em>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nunc sagittis, erat ut tincidunt sodales, justo massa ultrices mi, in laoreet quam tellus vitae magna. Nullam sed lectus. Praesent odio erat, eleifend eu, eleifend cursus, elementum sit amet, purus. Fusce accumsan tortor venenatis nulla. Cras ut felis eu elit interdum venenatis. Proin vulputate erat ac neque. Nunc eget diam a massa malesuada eleifend. Donec libero ipsum, vehicula at, vulputate quis, ultrices vitae, dui. Aenean lobortis, turpis nec pulvinar elementum, tortor urna ullamcorper felis, at dignissim sem sem et quam. Donec rhoncus lacus consectetuer dui. Quisque vitae metus. Mauris pellentesque viverra turpis. Aenean id dui. Donec pellentesque erat vel metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec quam lacus, commodo nec, scelerisque et, dictum ut, magna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Curabitur sit amet odio. Morbi cursus nibh ut ante. Nam a velit eu turpis pellentesque auctor.</em></p>
<p><em>Vestibulum leo urna, iaculis ac, dignissim at, dictum vel, justo. Donec luctus libero ut elit. Nulla purus enim, egestas et, varius at, commodo sit amet, lacus. Ut vitae arcu. Morbi sollicitudin erat sit amet mauris. Morbi non mi. Etiam ut justo. Nulla metus massa, rhoncus sed, gravida id, tempor quis, leo. Etiam massa odio, porta sed, dignissim ut, tempus a, urna. Nulla facilisi. Vestibulum ligula nisi, vehicula nec, blandit at, eleifend accumsan, leo. Quisque rutrum, felis in cursus faucibus, nisl sem ornare ligula, vitae congue enim lorem quis ante. Donec consequat metus.</em></p>
<p><em>Etiam magna tellus, iaculis vitae, semper ac, consectetuer tincidunt, leo. Vivamus a orci. Nam eget metus. Donec dolor arcu, consequat at, venenatis ac, pellentesque sit amet, tellus. Quisque condimentum ipsum ut lorem. Vestibulum pede purus, blandit sit amet, pharetra malesuada, vestibulum ut, justo. Fusce arcu odio, euismod at, semper tincidunt, laoreet ut, urna. Nullam aliquet iaculis neque. Cras posuere odio eget mauris. Proin lorem urna, lacinia eu, aliquam quis, blandit at, ipsum. In venenatis leo eu ipsum. Donec in dui ut purus facilisis gravida. Nulla convallis. Pellentesque rutrum. Proin orci arcu, consequat semper, luctus eget, convallis ut, dolor. Curabitur in nisi vitae mi condimentum venenatis. Integer nec purus non urna vestibulum tempor. Nam sollicitudin volutpat nisl.</em></p>
<p><em>Suspendisse ornare justo quis tortor. In mollis orci eget magna. Ut sit amet erat nec nulla aliquam luctus. Nulla facilisi. Aliquam erat volutpat. Nulla volutpat, eros ac malesuada dignissim, justo lacus gravida ligula, sed tempus erat est imperdiet nisl. Fusce ipsum velit, aliquam quis, ultrices laoreet, condimentum a, ipsum. Vestibulum sem augue, scelerisque sed, lobortis semper, tincidunt eget, est. Integer sit amet mauris et velit malesuada scelerisque. Suspendisse tincidunt adipiscing nunc. Integer faucibus nulla vel purus. Etiam eget enim. Donec magna. Nulla commodo mauris ut orci. In cursus quam. Maecenas a diam et arcu pulvinar interdum. Proin a ante et ante ultricies pellentesque. Maecenas bibendum nisl ac dui. Suspendisse sollicitudin.</em></p>
<p><em>Nulla quam. Sed lectus. Sed convallis, diam id accumsan mattis, est sapien eleifend eros, condimentum aliquam nisi augue feugiat lacus. Vestibulum sed dui. Nam iaculis suscipit dolor. Morbi molestie, quam vitae viverra pellentesque, eros sem aliquam neque, at sagittis nulla arcu elementum velit. Etiam ut elit. Nulla vel metus. Mauris mi risus, ornare volutpat, semper ut, ultricies ac, odio. Cras vel mi. Aliquam scelerisque vehicula lacus. Aliquam erat volutpat. Curabitur in ipsum in pede fringilla molestie. Vivamus vitae purus at elit ornare sagittis. Maecenas non erat ut dui pretium suscipit. Ut sagittis interdum lectus. In dapibus feugiat ipsum.</em></p>
<p><em>Morbi ultrices purus quis tortor auctor cursus. Nam a enim non lorem porta iaculis. Suspendisse potenti. Cras risus. Duis ullamcorper mattis elit. Donec in erat. Sed interdum metus at nulla. Suspendisse est. In vulputate. Integer feugiat vulputate nulla. Pellentesque sit amet nunc.</em></p>
<p><em>Duis suscipit. Suspendisse consectetuer, quam pharetra porta condimentum, dolor dui tempus ipsum, id feugiat ante turpis eu lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed sollicitudin lectus in tellus. Vestibulum hendrerit feugiat massa. Fusce scelerisque aliquam nunc. Donec molestie, sem non gravida semper, dolor dui viverra massa, sed ultrices nulla orci sed pede. Nunc ac quam. Morbi arcu dui, interdum quis, ullamcorper a, tempor at, est. In tincidunt risus in mauris. Integer condimentum mauris eget orci. Aliquam nisl. Nulla sit amet orci. Ut in velit ut metus volutpat iaculis. Sed metus justo, aliquam id, fringilla ac, feugiat ut, felis. Vestibulum faucibus tempus lectus.</em></p>
<p><em>Nullam dui tortor, cursus eu, eleifend eget, mattis ac, elit. Donec odio neque, aliquam et, pretium at, convallis ornare, ligula. Sed ac justo id quam eleifend venenatis. Praesent at mi sit amet neque egestas tempor. Nunc porttitor orci sit amet massa. Vestibulum felis arcu, ullamcorper ut, elementum ut, accumsan ut, ligula. Integer aliquam. Quisque venenatis, pede eget elementum commodo, pede lorem molestie quam, vel laoreet lectus metus et metus. Integer viverra, sapien non ultrices pellentesque, urna mi pharetra nibh, id iaculis ligula mi vel nulla. Cras sodales, justo a pharetra vehicula, mi mauris rhoncus libero, quis accumsan quam sem ut libero. Maecenas bibendum eleifend pede. Fusce imperdiet dolor non arcu. Proin quis lacus. Morbi tincidunt laoreet nibh. Etiam iaculis dui eu tortor. Suspendisse bibendum feugiat arcu. Cras blandit sodales magna. Vestibulum consequat luctus neque. </em></p>
</div>
</div>

<div id="pdf">
<object	data="pdf/Hashing.pdf#toolbar=1&amp;navpanes=0&amp;scrollbar=1&amp;page=1&amp;view=FitH" 
        type="application/pdf" 
        width="100%" 
        height="100%">

<p>It appears you don't have a PDF plugin for this browser. No biggie... you can <a href="/pdf/sample.pdf">click here to download the PDF file.</a></p>

</object>
</div>

</body>
</html>
