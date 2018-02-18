<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/home.css" rel="stylesheet" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/home.js"></script>
<title>Home Page</title>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-md-12">
            <div class="input-group" id="adv-search">
                <input id="searchTxt" type="text" class="form-control" placeholder="Search for snippets" />
                <div class="input-group-btn">
                    <div class="btn-group" role="group">
                        <div class="dropdown dropdown-lg">
                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false" style="height: 34px"><span class="caret"></span></button>
                            <div class="dropdown-menu dropdown-menu-right" role="menu">
                                <form class="form-horizontal" role="form">
                                  <div class="form-group">
                                    <label for="filter">Filter by</label>
                                    <select class="form-control">
                                        <option value="0" selected>All Snippets</option>
                                        <option value="1">Featured</option>
                                        <option value="2">Most popular</option>
                                        <option value="3">Top rated</option>
                                        <option value="4">Most commented</option>
                                    </select>
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Author</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <div class="form-group">
                                    <label for="contain">Contains the words</label>
                                    <input class="form-control" type="text" />
                                  </div>
                                  <button type="submit" class="btn btn-primary" style="height: 34px"><span class="glyphicon glyphicon-search" aria-hidden="true" ></span></button>
                                </form>
                            </div>
                        </div>
                        <button id="searchBtn" type="button" class="btn btn-primary" style="height: 34px"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
                        <span ></span>
                        <span ></span>
                        <span ></span>
                        <a href="<c:url value="j_spring_security_logout" />" class="btn btn-info btn-lg" style="position: relative;left: 117px">
          					<span class="glyphicon glyphicon-user" ></span> Logout 
        				</a>
                    </div>
                </div>
            </div>
          </div>
        </div>
	</div>
	
	<!-- Actual Search Results -->	
	<div class="container">
    <div class="row">
        <div class="col-xs-12 col-sm-offset-3 col-sm-6">
            <div class="panel panel-default">
                <div class="panel-heading c-list">
                    <span class="title">Contacts</span>
                    <ul class="pull-right c-controls">
                        <li><a href="#cant-do-all-the-work-for-you" data-toggle="tooltip" data-placement="top" title="Add Contact"><i class="glyphicon glyphicon-plus"></i></a></li>
                        <li><a href="#" class="hide-search" data-command="toggle-search" data-toggle="tooltip" data-placement="top" title="Toggle Search"><i class="fa fa-ellipsis-v"></i></a></li>
                    </ul>
                </div>
                
                <div class="row" style="display: none;">
                    <div class="col-xs-12">
                        <div class="input-group c-search">
                            <input type="text" class="form-control" id="contact-list-search">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search text-muted"></span></button>
                            </span>
                        </div>
                    </div>
                </div>
                
                <ul class="list-group" id="contact-list">
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/men/49.jpg" alt="Scott Stevens" class="img-responsive img-circle" />
                        </div>
                        <div id="chef1" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Scott Stevens</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="5842 Hillcrest Rd"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">5842 Hillcrest Rd</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(870) 288-4149"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(870) 288-4149</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="scott.stevens@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">scott.stevens@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/men/97.jpg" alt="Seth Frazier" class="img-responsive img-circle" />
                        </div>
                        <div id="chef2" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Seth Frazier</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="7396 E North St"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">7396 E North St</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(560) 180-4143"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(560) 180-4143</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="seth.frazier@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">seth.frazier@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/women/90.jpg" alt="Jean Myers" class="img-responsive img-circle" />
                        </div>
                        <div id="chef3" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Jean Myers</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="4949 W Dallas St"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">4949 W Dallas St</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(477) 792-2822"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(477) 792-2822</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="jean.myers@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">jean.myers@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/men/24.jpg" alt="Todd Shelton" class="img-responsive img-circle" />
                        </div>
                        <div id="chef4" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Todd Shelton</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="5133 Pecan Acres Ln"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">5133 Pecan Acres Ln</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(522) 991-3367"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(522) 991-3367</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="todd.shelton@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">todd.shelton@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/women/34.jpg" alt="Rosemary Porter" class="img-responsive img-circle" />
                        </div>
                        <div id="chef4" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Rosemary Porter</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="5267 Cackson St"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">5267 Cackson St</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(497) 160-9776"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(497) 160-9776</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="rosemary.porter@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">rosemary.porter@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/women/56.jpg" alt="Debbie Schmidt" class="img-responsive img-circle" />
                        </div>
                        <div id="chef5" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Debbie Schmidt</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="3903 W Alexander Rd"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">3903 W Alexander Rd</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(867) 322-1852"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(867) 322-1852</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="debbie.schmidt@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">debbie.schmidt@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="list-group-item">
                        <div class="col-xs-12 col-sm-3">
                            <img src="http://api.randomuser.me/portraits/women/76.jpg" alt="Glenda Patterson" class="img-responsive img-circle" />
                        </div>
                        <div id="chef6" class="col-xs-12 col-sm-9">
<!--                             <span class="name">Glenda Patterson</span><br/> -->
<!--                             <span class="glyphicon glyphicon-map-marker text-muted c-info" data-toggle="tooltip" title="5020 Poplar Dr"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">5020 Poplar Dr</span><br/></span> -->
<!--                             <span class="glyphicon glyphicon-earphone text-muted c-info" data-toggle="tooltip" title="(538) 718-7548"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">(538) 718-7548</span><br/></span> -->
<!--                             <span class="fa fa-comments text-muted c-info" data-toggle="tooltip" title="glenda.patterson@example.com"></span> -->
<!--                             <span class="visible-xs"> <span class="text-muted">glenda.patterson@example.com</span><br/></span> -->
                        </div>
                        <div class="clearfix"></div>
                    </li>
                </ul>
            </div>
        </div>
	</div>
    
    <div id="cant-do-all-the-work-for-you" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">�</button>
                    <h4 class="modal-title" id="mySmallModalLabel">Ooops!!!</h4>
                </div>
                <div class="modal-body">
                    <p>I am being lazy and do not want to program an "Add User" section into this snippet... So it looks like you'll have to do that for yourself.</p><br/>
                    <p><strong>Sorry<br/>
                    ~ Mouse0270</strong></p>
                </div>
            </div>
        </div>
    </div>
    
    <!-- JavaScrip Search Plugin -->
    <script src="//rawgithub.com/stidges/jquery-searchable/master/dist/jquery.searchable-1.0.0.min.js"></script>
    
</div>
	
	
	
	
	
	
</body>
</html>