<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Bootstrap 3 Responsive Layout Example</title>

		<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/jquery.min.js" type="text/javascript"></script>



<style type="text/css">
.example 
{
	margin: 20px;
}
.table-hover > tbody tr:HOVER{
 background-color: green;
}
</style>
</head>
<body>
  <div class="example">
 <div class="table-responsive">
<table class="table table-striped table-bordered  table-hover  ">
        <thead>
            <tr >
                <th>Row</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Emails</th>
            </tr>
        </thead>
        <tbody>
            <tr class="active">
                <td >1</td>
                <td>John</td>
                <td>Carter</td>
                <td>johncarter@mail.com</td>
            </tr>
            <tr>
                <td class="success">2</td>
                <td>Peter</td>
                <td>Parker</td>
                <td>peterparker@mail.com</td>
            </tr>
            <tr>
                <td class="info"> 3</td>
                <td>John</td>
                <td>Rambo</td>
                <td>johnrambo@mail.com</td>
            </tr>
        </tbody>
    </table>
    </div>
 </div> 
</body>
</html>       