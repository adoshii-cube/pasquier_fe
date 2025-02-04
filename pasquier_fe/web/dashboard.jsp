<%-- 
    Document   : dashboard
    Created on : 1 Aug, 2017, 5:24:18 PM
    Author     : adoshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>OWEN Analytics Société Générale - AI driven people solutions</title>

        <meta name="description" content="Harness the power of the informal organization. Redefine workforce engagement by leveraging employee interaction patterns. Optimize these interactions through a clever combination of traditional engagement mechanisms, network analysis and new-age predictive algorithms. Empower HR leaders to make data-driven decisions.">
        <meta name="keywords" content="human resources, HR, big data, talent management, talent acquisition, productivity, onboarding, onboarding and engagement, recruitment, solution, insights, machine learning, artificial intelligence, organizational network analysis, ona, retention, attrition">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        <meta content="IE=11;IE=Edge" http-equiv="X-UA-Compatible">
        <meta charset="utf-8">

        <meta itemprop="name" content="OWEN Analytics - AI driven people solutions">
        <meta itemprop="description" content="Harness the power of the informal organization. Redefine workforce engagement by leveraging employee interaction patterns. Optimize these interactions through a clever combination of traditional engagement mechanisms, network analysis and new-age predictive algorithms. Empower HR leaders to make data-driven decisions.">

        <meta property="og:type" content="website">
        <meta property="og:title" content="OWEN Analytics">
        <meta property="og:description" content="Harness the power of the informal organization. Redefine workforce engagement by leveraging employee interaction patterns. Optimize these interactions through a clever combination of traditional engagement mechanisms, network analysis and new-age predictive algorithms. Empower HR leaders to make data-driven decisions.">
        <meta property="og:url" content="http://www.owenanalytics.com/index.html/">
        <meta property="og:site_name" content="OWEN Analytics">
        <meta property="og:locale" content="en_IN">


        <!-- Page styles -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700" rel="stylesheet">
        <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,thin,black,medium&amp;lang=en">-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="assets/css/material.min.css">
        <link rel="stylesheet" href="assets/css/mdl-selectfield.min.css">
        <link rel="stylesheet" href="assets/css/dc.css">
        <link rel="stylesheet" href="assets/css/dashboard.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

        <link rel='shortcut icon' type='image/x-icon' href='assets/images/OWEN_Favicon.ico'/>

        <!-- Chrome, Firefox OS and Opera -->
        <meta name="theme-color" content="#303f9f">
        <!-- Windows Phone -->
        <meta name="msapplication-navbutton-color" content="#303f9f">
        <!-- iOS Safari -->
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="#303f9f">
    </head>
    <body>
        <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
            <header class="mdl-layout__header mdl-layout__header--waterfall mdl-color--indigo-500">
                <div class="mdl-layout__header-row">
                    <!-- Title -->
                    <a id="switchUser">
                        <span class="android-title mdl-layout-title">
                            <img class="android-logo-image" src="assets/images/OWEN_Logo_white.png" alt="OWEN Logo">
                        </span>
                    </a>
                    <!-- Add spacer, to align navigation to the right -->
                    <div class="mdl-layout-spacer"></div>
                    <!-- Navigation -->
                    <!--<div class="android-navigation-container">-->
                    <nav class="mdl-navigation">
                        <a class="mdl-navigation__link" href="upload.jsp">Upload</a>
                        <a class="mdl-navigation__link" href="recommendations.jsp">Recommendations</a>
                        <a class="mdl-navigation__link selected">Dashboard</a>
                    </nav>
                    <!--</div>-->
                    <button id="header-menu"
                            class="mdl-button mdl-js-button mdl-button--icon">
                        <i class="material-icons">more_vert</i>
                    </button>
                    <ul class="mdl-menu mdl-menu--bottom-right mdl-js-menu mdl-js-ripple-effect"
                        for="header-menu">
                        <li class="mdl-menu__item">Help & Feedback</li>
                        <li class="mdl-menu__item">Settings</li>
                        <a href="index.jsp" id="signOut">
                            <li class="mdl-menu__item"> 
                                Sign out
                            </li>
                        </a>
                    </ul>
                    <a>
                        <span class="android-mobile-title mdl-layout-title" id="switchUserMobile">
                            <img class="android-logo-image" src="assets/images/OWEN_Logo_white.png" alt="OWEN Logo">
                        </span>
                    </a>
                </div>
            </header>
            <main class="android-content mdl-layout__content">
                <div class="page-content">
                    <div class="android-card-container mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card">
                            <div class="mdl-grid mainContainer">
                                <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                                    <div class="mdl-grid">
                                        <div class="mdl-cell mdl-cell--10-col mdl-cell--6-col-tablet mdl-cell--3-col-phone containerDropdown" id="dropdown_jd"></div>
                                        <div class="mdl-cell mdl-cell--2-col mdl-cell--2-col-tablet mdl-cell--1-col-phone containerButtonReset">
                                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-chart__reset" id="buttonReset">RESET</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                                    <div class="mdl-grid">
                                        <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card" id="chartPie_Status">
                                            <div class="mdl-card__title">
                                                <h2 class="mdl-card__title-text">Status</h2>
                                            </div>
                                        </div>
                                        <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card" id="chartBar_Experience">
                                            <div class="mdl-card__title">
                                                <h2 class="mdl-card__title-text">Experience</h2>
                                            </div>
                                        </div>
                                        <div class="mdl-cell mdl-cell--4-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card" id="chartPie_Qualification">
                                            <div class="mdl-card__title">
                                                <h2 class="mdl-card__title-text">Qualification</h2>
                                            </div>
                                        </div>
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card" id="chartBar_Location">
                                            <div class="mdl-card__title">
                                                <h2 class="mdl-card__title-text">Location</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/d3.min.js"></script>
        <script src="assets/js/crossfilter.min.js"></script>
        <script src="assets/js/dc.min.js"></script>
        <script src="assets/js/dashboard.js"></script>
    </body>
</html>
