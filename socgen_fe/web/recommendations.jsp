<%-- 
    Document   : recommendations
    Created on : 27 Jul, 2017, 11:30:44 AM
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
        <link href="assets/css/magnific-popup.css" media="all" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="assets/css/recommendations.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="assets/js/jquery.slidereveal.min.js"></script>

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
                        <a class="mdl-navigation__link selected">Recommendations</a>
                        <a class="mdl-navigation__link" href="">Dashboard</a>
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
            <div id="slider">
                <button class="mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="trigger2">
                    <i class="material-icons">keyboard_arrow_right</i>
                </button>
                <div class="android-card-container mdl-grid">
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone sliderTitle">Filter by</div>
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                            <select id="dropdown_location" name="location" class="mdl-selectfield__select" required>
                                <option value="l1">Ahmedabad</option>
                                <option value="l2">Bengaluru</option>
                                <option value="l3">Cochin</option>
                                <option value="l4">Dhanbad</option>
                                <option value="l5">Mumbai</option>
                                <option value="l6">Pune</option>
                                <option value="l7">Sangli</option>
                            </select>
                            <label class="mdl-selectfield__label" for="myselect">Location</label>
                            <span class="mdl-selectfield__error">Please select a location</span>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                            <select id="dropdown_experience" name="experience" class="mdl-selectfield__select" required>
                                <option value="e1">0 to <6 months</option>
                                <option value="e2">6 months to 2 years</option>
                                <option value="e3">2 to 5 years</option>
                                <option value="e4">5 to 10 years</option>
                                <option value="e5">10 to 20 years</option>
                                <option value="e6">20+ years</option>
                            </select>
                            <label class="mdl-selectfield__label" for="myselect">Experience</label>
                            <span class="mdl-selectfield__error">Please select an experience value</span>
                        </div>
                    </div>
                    <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                            <select id="dropdown_qualification" name="qualification" class="mdl-selectfield__select" required>
                                <option value="q1">Undergraduate</option>
                                <option value="q2">Graduate</option>
                                <option value="q3">Post Graduate</option>
                                <option value="q4">Double Post Graduate</option>
                            </select>
                            <label class="mdl-selectfield__label" for="myselect">Qualification</label>
                            <span class="mdl-selectfield__error">Please select a qualification value</span>
                        </div>
                    </div>
                    <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" id="goFilterDataButton">
                        Filter
                    </button>
                </div>
            </div>
            <main class="android-content mdl-layout__content">
                <div class="page-content">
                    <div class="android-card-container mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card">
                            <div class="mdl-grid mainContainer">
                                <div class="mdl-cell mdl-cell--5-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                                    <div class="mdl-grid jdDropdownContainer">
                                        <div class="mdl-cell mdl-cell--7-col mdl-cell--8-col-tablet mdl-cell--4-col-phone">
                                            <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                                <select id="dropdown_jd" name="jd" class="mdl-selectfield__select" required>
                                                    <option value="jd1">MSBI - Technical Manager</option>
                                                    <option value="jd2">Corporate Loan - SM</option>
                                                </select>
                                                <label class="mdl-selectfield__label" for="myselect">Job description</label>
                                                <span class="mdl-selectfield__error">Please select a job description value</span>
                                            </div>
                                        </div>
                                        <div class="mdl-cell mdl-cell--5-col mdl-cell--8-col-tablet mdl-cell--4-col-phone jdButtonsContainer">
                                            <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">GO</button>
                                            <div class="mdl-layout-spacer"></div>
                                            <button class="mdl-button mdl-js-button mdl-js-ripple-effect" id="viewJD">View JD</button>
                                        </div>
                                    </div>
                                    <div class="mdl-grid">
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone tableTitle">Results</div>
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone" id="tableContainer">
                                            <table class="mdl-data-table mdl-js-data-table">
                                                <thead>
                                                    <tr>
                                                        <th class="mdl-data-table__cell--non-numeric">Candidate</th>
                                                        <th>Score</th>
                                                        <th class="mdl-data-table__cell--non-numeric">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Baba Elaichi</td>
                                                        <td class="score">25</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV1.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Sunil Jose</td>
                                                        <td class="score">50</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV2.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Lata Mangeshkar</td>
                                                        <td class="score">25</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV3.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Sonu Nigam</td>
                                                        <td class="score">50</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV4.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Anu Malik</td>
                                                        <td class="score">25</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV5.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Bali Brahmabhatt</td>
                                                        <td class="score">50</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV6.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Baba Sehgal</td>
                                                        <td class="score">25</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV7.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Alka Yagnik</td>
                                                        <td class="score">50</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV8.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Abhijit Bhattacharya</td>
                                                        <td class="score">25</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV9.pdf">View resume</a></td>
                                                    </tr>
                                                    <tr id="template">
                                                        <td class="mdl-data-table__cell--non-numeric name">Bappi Lahiri</td>
                                                        <td class="score">50</td>
                                                        <td class="mdl-data-table__cell--non-numeric link"><a href="CV10.pdf">View resume</a></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--7-col mdl-cell--8-col-tablet mdl-cell--4-col-phone pdfViewerKeywordsContainer">
                                    <div class="mdl-grid">
                                        <!--<div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone tableTitle">Résumé</div>-->
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone" id="pdfViewerContainer">
                                            <!--<object data="CV1.pdf" type="application/pdf" width="100%" height="100%">-->
                                            <!--alt : <a href="CV2.pdf">blueLagoonTickets.pdf</a>-->
                                            <!--</object>-->
                                        </div>
                                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone" id="keywordsContainer">
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">floccinaucinihilipilification</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">is simply</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">dummy text</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">quisquam</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">consectetur adipisci</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">opposed to using</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Aldus PageMaker</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">not</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">antidisestablishmentarianism</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">standard chunk</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">pneumonoultramicroscopicsilicovolcanoconiosis</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Incomprehensibilities</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Unimaginatively</span>
                                            </span>

                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                            <span class="mdl-chip">
                                                <span class="mdl-chip__text">Basic Chip</span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--11-col mdl-cell--8-col-tablet mdl-cell--4-col-phone jdContainer"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/mdl-selectfield.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/recommendations.js"></script>
    </body>
</html>
