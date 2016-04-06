<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Just Dupe to Win.....</title>
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="Styles/bootstrap-responsive.min.css" />
    <link rel="stylesheet" type="text/css" href="Styles/Styles.css" />
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/Custom.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.tab-pane:not(.active)').hide();
            $(".nav-tabs li a").click(function () {
                $('.tab-pane').removeClass('active').hide();
                $($(this).attr('href')).addClass('active').show();
            });
        });
    </script>
</head>
<body>
    <!--Top Strip-->
    <div class="SecondaryNav">
        <div class="container">
            <div class="row-fluid">
                <div class="span6">
                    <ul class="top-menu" id="menu-top-menu">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
                <div class="span5 frt">
                    <ul class="frt socialIcons">
                        <li><a href="#" class="facebook">FaceBook</a></li>
                        <li><a href="#" class="Twitter">Twitter</a></li>
                        <li><a href="#" class="Linkedin">Linkedin</a></li>
                    </ul>
                    <span class="frt" style="margin: 5px 5px 0 0;"><a href="#myModal" role="button" class="login" data-toggle="modal">Login</a></span>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal -->
    <div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
            <h3 id="myModalLabel">Login Dude's</h3>
        </div>
        <div class="modal-body LoginPop">
            <ul class="nav nav-tabs">
                <li class="active"><a href="#StudentLogin" data-toggle="tab">Student Login</a></li>
                <li><a href="#EmployeeLogin" data-toggle="tab">Employer Login</a></li>
                <li><a href="#UniversityLogin" data-toggle="tab">University Login</a></li>
            </ul>
            @using (Html.BeginForm("ValidateStudent", "Login", FormMethod.Post, new { id = "submitLoginForm" }))
            {
                <div class="tab-content">
                    <div class="tab-pane active" id="StudentLogin">
                        <h4>Student Login</h4>
                        <ul class="row-fluid">
                            <li class="span6">
                                <label>User Name:</label>
                                <input type="text" id="txtStdName" />
                            </li>
                            <li class="span6">
                                <label>Password:</label>
                                <input type="password" id="txtStdPwd" />
                            </li>
                            <li class="clr span6">
                                <input type="submit" id="BtnStdLogin" class="btn-primary btn" value="Login" name="command"/>
                            </li>
                        </ul>
                        <div class="modal-footer" align="Right">
                            <button class="btn">Forgot Password?</button>
                            <input type="submit" id="StdSignUp" class="btn-primary btn" value="Sign Up Now" name="command"/>
                        </div>
                    </div>
                </div>
            }
            @using (Html.BeginForm("ValidateEmployee", "Login", FormMethod.Post, new { id = "submitLoginForm" }))
            {
                <div class="tab-content">
                    <div class="tab-pane" id="EmployeeLogin">
                        <h4>Employer Login</h4>
                        <ul class="row-fluid">
                            <li class="span6">
                                <label>User Name:</label>
                                <input type="text" id="TxtEmpName" />
                            </li>
                            <li class="span6">
                                <label>Password:</label>
                                <input type="password" id="TxtEmpPwd" />
                            </li>
                            <li class="clr span6">
                                <input type="submit" id="BtnEmpLogin" class="btn-primary btn" value="Login" name="command"/>
                            </li>
                        </ul>
                        <div class="modal-footer" align="Right">
                            <button class="btn">Forgot Password?</button>
                            <input type="submit" id="EmpSignUp" class="btn-primary btn" value="Sign Up Now" name="command"/>
                        </div>
                    </div>
                </div>
            }
           @using (Html.BeginForm("ValidateUniversity", "Login", FormMethod.Post, new { id = "submitLoginForm" }))
            {
                <div class="tab-content">
                    <div class="tab-pane" id="UniversityLogin">
                        <h4>University/College Login</h4>
                        <ul class="row-fluid">
                            <li class="span6">
                                <label>User Name:</label>
                                <input type="text" id="TxtUniName" name="TxtUniName" />
                            </li>
                            <li class="span6">
                                <label>Password:</label>
                                <input type="password" id="TxtUniPwd" name="TxtUniPwd"/>
                            </li>
                             <li class="clr span6">
                                <input type="submit" id="BtnUniLogin" class="btn-primary btn" value="Login" name="command"/>
                            </li>
                        </ul>
                        <div class="modal-footer" align="Right">
                            <button class="btn">Forgot Password?</button>
                            <input type="submit" id="UniSignUp" class="btn-primary btn" value="Sign Up Now" name="command"/>
                        </div>
                    </div>
                </div>
            }
        </div>
    </div>
</body>
</html>