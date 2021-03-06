<!DOCTYPE html>
<html lang="en">
<head>
<title>Example of Bootstrap 3 Two Column Grid Layouts for All Devices</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style type="text/css">
    /* Some custom styles to beautify this example */
    .demo-content{
        padding: 15px;
        font-size: 18px;
        min-height: 300px;
        background: #dbdfe5;
        margin-bottom: 10px;
    }
    .demo-content.bg-alt{
        background: #abb1b8;
    }
</style>
</head>
<body>
    <!-- Open the output in a new blank tab (Click the arrow next to "Show Output" button) and resize the browser window to understand how the Bootstrap responsive grid system works. -->
    <div class="container">
        <!--Row with two equal columns-->
        <div class="row">
            <div class="col-xs-6">
                <div class="demo-content">.col-xs-6</div>
            </div>
            <div class="col-xs-6">
                <div class="demo-content bg-alt">.col-xs-6</div>
            </div>
        </div>
        <hr>
        <!--Row with two columns divided in 1:2 ratio-->
        <div class="row">
            <div class="col-xs-4">
                <div class="demo-content">.col-xs-4</div>
            </div>
            <div class="col-xs-8">
                <div class="demo-content bg-alt">.col-xs-8</div>
            </div>
            
            
            
            
        </div>
        <hr>
        <!--Row with two columns divided in 1:3 ratio-->
        <div class="row">
            <div class="col-xs-3">
                <div class="demo-content">.col-xs-3</div>
            </div>
            <div class="col-xs-9">
                <div class="demo-content bg-alt">.col-xs-9</div>
            </div>
            <div class="col-xs-12">
                            <div class="demo-content bg-alt">.col-xs-12</div>
            
            </div>
              <div class="col-xs-15">
                            <div class="demo-content bg-alt">.col-xs-15</div>
            
            </div>
        </div>
    </div>
</body>
</html>                                		                                		