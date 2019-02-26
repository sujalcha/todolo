<!DOCTYPE html >
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<title>Collapsible sidebar using Bootstrap 4</title>


<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/demo.css" rel="stylesheet">

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">


<link href="css/style.css" rel="stylesheet">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<link href="css/gsdk-bootstrap-wizard.css" rel="stylesheet">

<link
	href="//cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.css"
	rel="stylesheet" />
<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>


</head>
<body>

	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Todolo</h3>
				<strong>TD</strong>
			</div>

			<ul class="list-unstyled components">
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle"> <i class="fas fa-home"></i> Projects
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">

						<li><a href="startproject">Start New Project</a></li>
						<li><a href="#">View Past Projects</a></li>
						<li><a href="#">Home 3</a></li>
					</ul></li>
				<li><a href="#"> <i class="fas fa-briefcase"></i> About
				</a> <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle"> <i class="fas fa-copy"></i> Pages
				</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">Page 1</a></li>
						<li><a href="#">Page 2</a></li>
						<li><a href="#">Page 3</a></li>
					</ul></li>
				<li><a href="#"> <i class="fas fa-image"></i> Portfolio
				</a></li>
				<li><a href="#"> <i class="fas fa-question"></i> FAQ
				</a></li>
				<li><a href="#"> <i class="fas fa-paper-plane"></i> Contact
				</a></li>

				<li><a href="/login">Login</a></li>
				<li><a href="/register">Register</a></li>
				<li><a href="/show-users">All Users</a></li>
			</ul>

			<ul class="list-unstyled CTAs">
				<li><a
					href="https://bootstrapious.com/tutorial/files/sidebar.zip"
					class="download">Download source</a></li>
				<li><a href="https://bootstrapious.com/p/bootstrap-sidebar"
					class="article">Back to article</a></li>
				<li><a>SignOut</a></li>
			</ul>
		</nav>





		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>Toggle Sidebar</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="nav navbar-nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="#">Page</a>
							</li>
							<li class="nav-item"><a class="nav-link" href="#">Page</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Page</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Page</a></li>
						</ul>
					</div>
				</div>
			</nav>


			<c:choose>
				<c:when test="${mode=='MODE_HOMEPAGE' }">
					<h2>Would you like to start a new Project</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident,
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					<a class="btn btn-primary" href="#" role="button">Link</a>
					<div class="line"></div>

					<h2>Would you like to view ongoing projects</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident,
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					<a class="btn btn-primary" href="#" role="button">Link</a>
					<div class="line"></div>

					<h2>Would you like to view previous projects</h2>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur. Excepteur sint occaecat cupidatat non proident,
						sunt in culpa qui officia deserunt mollit anim id est laborum.</p>

					<a class="btn btn-primary" href="#" role="button">Link</a>
					<div class="line"></div>



				</c:when>

				<c:when test="${mode=='MODE_STARTPROJECT' }">



					<div class="row">


						<div class="card wizard-card" data-color="blue" id="wizardProfile">
							<form action="" method="">
								<!--        You can switch ' data-color="orange" '  with one of the next bright colors: "blue", "green", "orange", "red"          -->


								<div class="wizard-navigation">
									<ul>
										<li><a href="#about" data-toggle="tab">Project
												Details</a></li>
										<li><a href="#account" data-toggle="tab">Add Team</a></li>
										<li><a href="#address" data-toggle="tab">Assign Task</a></li>
									</ul>

								</div>

								<div class="tab-content">
									<div class="tab-pane" id="about">
										<div class="row">
											<div class="col-sm-6">

												<div class="form-group">
													<label>Project Name </label> <input name="firstname"
														type="text" class="form-control"
														placeholder="Project Name">
												</div>
												<div class="form-group">
													<label>Project Manager</label> <input name="lastname"
														type="text" class="form-control" placeholder="Person Name">
												</div>




											</div>

										</div>
									</div>
									<div class="tab-pane" id="account">
										<h4 class="info-text">Please Add your team</h4>

										<div class="form-group">
											<label>Team Name </label> <input name="firstname" type="text"
												class="form-control" placeholder="Team Name">
										</div>

										<button class="btn btn-outline-secondary,add-author"
											id="addElem" type="button">ADD +1 TEAM MEMBER</button>
										<input type='button' value='Add Button' id='addButton'>


										<input type="text"
											class="form-control mdb-autocomplete" id="productName">
											<div class="input-group-append">
																<button id="addteam" class="btn btn-outline-secondary" type="button">ADD
																	TO TEAM</button>


															</div>


										<ul id='TextBoxesGroup' class="nobull">
											<li class="nobull" id="TextBoxDivnew1">
												<div class="row">
													<div class="col-sm-12">
														<div class="input-group mb-3">
															<div class="input-group-prepend">
																<span class="input-group-text">Team Member 1</span>
															</div>
															<input type="text"
																class="form-control mdb-autocomplete" >

															<div class="input-group-append">
																<button class="btn btn-outline-secondary" type="button">ADD
																	TO TEAM</button>


															</div>
														</div>
													</div>
											</li>
										</ul>

										<div id="textteambox">
										<div id="newteam1">
										
										</div>
										</div>



									</div>
									<div class="tab-pane" id="address">
										<div class="row">
											<div class="col-sm-12">
												<h4 class="info-text">Add task and Assign</h4>

												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<span class="input-group-text">Task 1</span>
													</div>
													<input type="text" class="form-control"
														aria-label="Amount (to the nearest dollar)">

													<div class="input-group-append">
														<button class="btn btn-outline-secondary" type="button">ADD
															SUBTASK</button>
														<button class="btn btn-outline-secondary" type="button">ASSIGN
															TASK</button>
													</div>
												</div>



											</div>
										</div>

									</div>
								</div>

								<div class="wizard-footer height-wizard">
									<div class="pull-right">
										<input type='button'
											class='btn btn-next btn-fill btn-warning btn-wd btn-sm'
											name='next' value='Next' /> <input type='button'
											class='btn btn-finish btn-fill btn-warning btn-wd btn-sm'
											name='finish' value='Finish' />

									</div>

									<div class="pull-left">
										<input type='button'
											class='btn btn-previous btn-fill btn-default btn-wd btn-sm'
											name='previous' value='Previous' />
									</div>
									<div class="clearfix"></div>
								</div>

							</form>

						</div>
					</div>
					<!-- end row -->

					<!--  big container -->



					</form>
				</c:when>



			</c:choose>
		</div>
	</div>





	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->



	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
		integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
		crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
		integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
		crossorigin="anonymous"></script>


	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
	<script src="js/gsdk-bootstrap-wizard.js"></script>
	<script src="js/jquery.validate.min.js"></script>


	<script src="js/main.js"></script>





</body>
</html>









