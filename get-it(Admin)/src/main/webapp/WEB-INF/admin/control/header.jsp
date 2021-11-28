<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg main-navbar">
	<a class="header-brand" href="dashboard"> <img
		src="${pageContext.request.contextPath}/resources/admin/img/brand/logo1.png"
		class="header-brand-img" alt="Kharna-Admin  logo">
	</a>
	<form class="form-inline mr-auto">
		<ul class="navbar-nav mr-3">
			<li><a href="#" data-toggle="sidebar"
				class="nav-link nav-link-lg"><i class="ion ion-navicon-round"></i></a></li>
			<li><a href="#" data-toggle="search"
				class="nav-link nav-link-lg d-md-none navsearch"><i
					class="ion ion-search"></i></a></li>
		</ul>
		<div class="search-element">
			<input class="form-control" type="search" placeholder="Search"
				aria-label="Search">
			<button class="btn btn-primary" type="submit">
				<i class="ion ion-search"></i>
			</button>
		</div>
	</form>
	<ul class="navbar-nav navbar-right">
		<li class="dropdown dropdown-list-toggle"><a href="#"
			data-toggle="dropdown" class="nav-link  nav-link-lg beep"><i
				class="ion-ios-bell-outline"></i></a>
			<div class="dropdown-menu dropdown-list dropdown-menu-right">
				<div class="dropdown-header">
					Notifications
					<div class="float-right">
						<a href="#">View All</a>
					</div>
				</div>
				<div class="dropdown-list-content">
					<a href="notifications" class="dropdown-item"> <i
						class="fa fa-thumbs-up text-primary"></i>
						<div class="dropdown-item-desc">
							<b>Request for Approve</b>
						</div>
					</a>
				</div>
			</div></li>
		<li class="dropdown dropdown-list-toggle"><a href="#"
			class="nav-link nav-link-lg full-screen-link"> <i
				class="ion-arrow-expand" id="fullscreen-button"></i>
		</a></li>
		<li class="dropdown"><a href="#" data-toggle="dropdown"
			class="nav-link dropdown-toggle nav-link-lg"> <img
				src="${pageContext.request.contextPath}/resources/admin/img/avatar/avatar.jpg"
				alt="profile-user" class="rounded-circle w-32">
				<div class="d-sm-none d-lg-inline-block">${admin.name}</div></a>
			<div class="dropdown-menu dropdown-menu-right">
				<a href="profile" class="dropdown-item has-icon"> <i
					class="ion ion-android-person"></i> My Profile
				</a> <a href="logout" class="dropdown-item has-icon"> <i
					class="ion-ios-redo"></i> Logout
				</a>
			</div></li>
	</ul>
</nav>
