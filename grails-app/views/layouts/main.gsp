<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> 

<html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
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
    <g:layoutHead/>
</head>
<body>    
    <header id="header">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <a class="navbar-brand" href="dashboard.html"><img src="assets/images/logo.png" alt="Genyx admin" class="img-responsive"></a>
            <button type="button" class="navbar-toggle btn-danger" data-toggle="collapse" data-target="#navbar-to-collapse">
                <span class="sr-only">Toggle right menu</span>
                <i class="icon16 i-arrow-8"></i>
            </button>          
            <div class="collapse navbar-collapse" id="navbar-to-collapse">                  
                <ul class="nav navbar-nav pull-right">                                                                        
                    <li class="divider-vertical"></li>
                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle avatar" data-toggle="dropdown">
                            <img src="assets/images/avatars/sugge.jpg" alt="sugge">
                            <span class="more"><i class="icon16 i-arrow-down-2"></i></span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation"><a href="#" class=""><i class="icon16 i-cogs"></i> Settings</a></li>
                            <li role="presentation"><a href="profile.html" class=""><i class="icon16 i-user"></i> Profile</a></li>
                            <li role="presentation"><a href="index.html" class=""><i class="icon16 i-exit"></i> Logout</a></li>
                        </ul>
                    </li>
                    <li class="divider-vertical"></li>
                </ul>
            </div><!--/.nav-collapse -->
        </nav>
    </header> <!-- End #header  -->

    <div class="main">
        <aside id="sidebar">
            <g:render template="/shared/menu" />
        </aside><!-- End #sidebar  -->
        <section id="content">
            <div class="wrapper">
                <div class="crumb">
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="icon16 i-home-4"></i>Home</a></li>
                        <li><a href="#">Library</a></li>
                        <li class="active">Data</li>
                    </ul>
                </div>

                <div class="container-fluid">
                    <div id="heading" class="page-header">
                        <h1><i class="icon20 i-file-7"></i> Blank Page</h1>
                    </div>

                    <div class="row">
                    <!-- Start page from here  -->



                    </div><!-- End .row-fluid  -->

                </div> <!-- End .container-fluid  -->
            </div> <!-- End .wrapper  -->
        </section>
    </div><!-- End .main  -->
</body>
</html>