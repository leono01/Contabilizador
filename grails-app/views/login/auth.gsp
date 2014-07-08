<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>Ingreso al Sistema</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- Headings -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,800,700' rel='stylesheet' type='text/css'>
        <!-- Text -->
        <link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css' />


        <!-- Core stylesheets do not remove -->
        <link href="${resource(dir:'assets/css/bootstrap',file:'bootstrap.css')}" rel="stylesheet" />
        <link href="${resource(dir:'assets/css/bootstrap',file:'bootstrap-theme.css')}" rel="stylesheet" />
        <link href="${resource(dir:'assets/css',file:'icons.css')}" rel="stylesheet" />

        <!-- Plugins stylesheets -->
        <link href="${resource(dir:'assets/js/plugins/forms/uniform',file:'uniform.default.css')}" rel="stylesheet" /> 

        <!-- app stylesheets -->
        <link href="${resource(dir:'assets/css',file:'app.css')}" rel="stylesheet" /> 

        <!-- Custom stylesheets ( Put your own changes here ) -->
        <link href="${resource(dir:'assets/css',file:'custom.css')}" rel="stylesheet" /> 

        <!-- Force IE9 to render in normal mode -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <!-- Important plugins put in all pages -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>     
        <script src="${resource(dir:'assets/js/bootstrap',file:'bootstrap.js')}"></script>  
        <script src="${resource(dir:'assets/js',file:'conditionizr.min.js')}"></script>  
        <script src="${resource(dir:'assets/js/plugins/core/nicescroll',file:'jquery.nicescroll.min.js')}"></script>
        <script src="${resource(dir:'assets/js/plugins/core/jrespond',file:'jRespond.min.js')}"></script>
        <script src="${resource(dir:'assets/js',file:'jquery.genyxAdmin.js')}"></script>

        <!-- Form plugins -->
        <script src="${resource(dir:'assets/js/plugins/forms/uniform',file:'jquery.uniform.min.js')}"></script>

        <!-- Init plugins -->
        <script src="${resource(dir:'assets/js',file:'app.js')}"></script><!-- Core js functions -->
        <script src="${resource(dir:'assets/js/pages',file:'domready.js')}"></script><!-- Init plugins only for page -->

    <asset:stylesheet src="application.css"/>
    <asset:javascript src="application.js"/>
</head>
    <body>
    <sec:ifNotLoggedIn>    
    <div class="container-fluid">
        <div id="login">
            <div class="login-wrapper" data-active="log">
               <a class="navbar-brand" href="dashboard.html"><img src="images/logodark.png" alt="Genyx admin" class="img-responsive"></a>
                <div id="log">
                    <div id="avatar">
                        <img src="images/avatars/suggebig.jpg" alt="SuggeElson" class="img-responsive">
                    </div>
                    <div class="page-header">
                        <h3 class="center">Por favor, escriba los datos de su cuenta que se le proporcionó</h3>
                    </div>
                    <form id="login-form" class="form-horizontal" action="${postUrl}" method="POST" autocomplete="false">
                        <div class="row">
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-user"></i></div>
                                <input class="form-control" type="text" name="j_username" id="username" placeholder="Nombre de usuario" value="">
                                
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-key"></i></div>
                                <input class="form-control" type="password" name="j_password" id="password" placeholder="Contraseña" value="">
                                
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <label class="control-label" class="checkbox pull-left">
                                    <input type="checkbox" value="1" name="remember" <g:if test='${hasCookie}'>checked='checked'</g:if>/>
                                    Remember me ?
                                </label>
                                <button id="loginBtn" type="submit" class="btn btn-primary pull-right col-lg-5">Ingresar</button>
                            </div>
                            <div class="form-group relative">
                            <g:if test='${flash.message}'>
                                    <div class="alert alert-error alert-block">
                                      <h4 class="alert-heading center">¡Alerta!</h4> ${flash.message}
                                    </div>
                                </g:if>
                            </div>
                        </div><!-- End .row-fluid  -->
                    </form>
                    <p class="center">Don`t have an account? <a href="#" id="register"><strong>Create one now</strong></a></p>
                    <div class="center"><strong>or</strong></div>
                    <hr class="seperator">
                    <a href="#" class="btn btn-primary pull-left"><i class="icon16 i-facebook gap-left0"></i> Connect</a>
                    <a href="#" class="btn btn-info pull-right"><i class="icon16 i-twitter gap-left0"></i> Connect</a>
                </div>
                <div id="reg">
                    <div class="page-header">
                        <h3 class="center">Register account</h3>
                    </div>
                    <form class="form-horizontal">
                        <div class="row">
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-user"></i></div>
                                <input class="form-control" type="text" name="user" id="user" placeholder="Username">
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-key"></i></div>
                                <input class="form-control" type="password" name="password" id="password" placeholder="Password">
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-key"></i></div>
                                <input class="form-control" type="password" name="password1" id="password_again" placeholder="Re-type password">
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-envelop-2"></i></div>
                                <input class="form-control" type="text" name="email" id="email-field" placeholder="Your email">
                            </div><!-- End .control-group  -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-lg btn-block btn-danger">Register my account</button>
                            </div>
                        </div><!-- End .row-fluid  -->
                    </form>
                </div>
                <div id="forgot">
                    <div class="page-header">
                        <h3 class="center">Forgot password</h3>
                    </div>
                    <form class="form-horizontal">
                        <div class="row">
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-user"></i></div>
                                <input class="form-control" type="text" name="user" id="user" placeholder="Username">
                            </div><!-- End .control-group  -->
                            <div class="form-group relative">
                                <div class="icon"><i class="icon20 i-envelop-2"></i></div>
                                <input class="form-control" type="text" name="email" id="email-field" placeholder="Your email">
                            </div><!-- End .control-group  -->
                            <div class="form-group">
                                <button type="submit" class="btn btn-lg btn-block btn-success">Recover my password</button>
                            </div>
                        </div><!-- End .row-fluid  -->
                    </form>
                </div>
            </div>
            <div id="bar" data-active="log">
                <div class="btn-group btn-group-vertical">
                    <a id="log" href="#" class="btn tipR" title="Login"><i class="icon16 i-key"></i></a>
                    <a id="reg" href="#" class="btn tipR" title="Register account"><i class="icon16 i-user-plus"></i></a>
                    <a id="forgot" href="#" class="btn tipR" title="Forgout password"><i class="icon16 i-question"></i></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    </sec:ifNotLoggedIn>
    </body>
</html>
