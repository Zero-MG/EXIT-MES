<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%  // 인증된 세션이 없는경우, 해당페이지를 볼 수 없게 함.
    if (session.getAttribute("sdto") == null) {
        response.sendRedirect("/account/login");
    }
%>     
    
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="" />
	<meta name="author" content="" />
	<title>EXIT - MES System</title>
	<link href="/resources/css/styles.css" rel="stylesheet" />
	<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>

<style>

	#ft_style{
		font-size: 10pt;
	}

</style>

<body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/">EXIT Company - MES</a>
            <!-- Sidebar Toggle-->
            <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
<%--                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>--%>
                </div>
            </form>

            <!-- Navbar-->
            <span style="color: white;">${sdto.userName} 님&nbsp;</span>
				<ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
					<li class="nav-item dropdown">
						<a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
						<ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">사용자 정보</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">설정</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="/account/login">로그아웃</a></li>
						</ul>
					</li>
				</ul>

        </nav>
        
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-light" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                        
                            <%-- <div class="sb-sidenav-menu-heading">메인</div>
                            <a class="nav-link" href="index.html">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Dashboard
                            </a> --%>
                            
                            <div class="sb-sidenav-menu-heading">품질관리</div>
	                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts1" aria-expanded="false" aria-controls="collapseLayouts1">
	                                <div class="sb-nav-link-icon"><i class="fas fa-folder"></i></div>
									<b>수입검사</b>
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="collapseLayouts1" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" id="ft_style" href="#">수입검사등록</a>
	                                    <a class="nav-link" id="ft_style" href="#">수입검사현황</a>
	                                    <a class="nav-link" id="ft_style" href="#">검사현황분석</a>
	                                    
	                                </nav>
	                            </div>
	                            
	                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts2" aria-expanded="false" aria-controls="collapseLayouts2">
	                                <div class="sb-nav-link-icon"><i class="fas fa-folder"></i></div>
									<b>공정품질</b>
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="collapseLayouts2" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" id="ft_style" href="#">공정검사등록</a>
	                                    <a class="nav-link" id="ft_style" href="#">입고검사등록</a>
	                                    <a class="nav-link" id="ft_style" href="#">수리현황</a>
	                                    <a class="nav-link" id="ft_style" href="#">품질PPM현황</a>
	                                    <a class="nav-link" id="ft_style" href="#">출하검사등록</a>
	                                </nav>
	                            </div>
	                            
	                            <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts3" aria-expanded="false" aria-controls="collapseLayouts3">
	                                <div class="sb-nav-link-icon"><i class="fas fa-folder"></i></div>
									<b>검사성적서</b>
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse" id="collapseLayouts3" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" id="ft_style" href="#">검사성적서</a>
	                                </nav>
	                            </div>
	                            
	                            <a class="nav-link" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts4" aria-expanded="true" aria-controls="collapseLayouts4">
	                                <div class="sb-nav-link-icon"><i class="fas fa-folder"></i></div>
									<b>기준정보</b>
	                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
	                            </a>
	                            <div class="collapse show" id="collapseLayouts4" aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
	                                <nav class="sb-sidenav-menu-nested nav">
	                                    <a class="nav-link" id="ft_style" href="/information/main">검사자재등록</a>
	                                    <a class="nav-link" id="ft_style" href="/inspection/main">검사항목등록</a>
	                                    <a class="nav-link" id="ft_style" href="/infoinspectitem/main">자재별검사항목등록</a>
	                                    <a class="nav-link" id="ft_style" href="/lot/main">Lot별 검사결과입력</a>
	                                </nav>
	                            </div>
	                        </div>
	                    </div>
							<div class="sb-sidenav-footer">
                        <div class="small">로그인:</div>
                        ${sdto.userName} 님
                    </div>
                </nav>
            </div>
              <div id="layoutSidenav_content">

              