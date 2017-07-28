<%-- 
    Document   : upload
    Created on : 27 Jul, 2017, 11:29:53 AM
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
        <link rel="stylesheet" href="assets/css/upload.css">
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
                        <a class="mdl-navigation__link selected" href="">Upload</a>
                        <a class="mdl-navigation__link" href="recommendations.jsp">Recommendations</a>
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
            <main class="android-content mdl-layout__content">
                <div id="loader" class="mdl-progress mdl-js-progress"></div>
                <div class="page-content">
                    <div class="android-card-container mdl-grid">
                        <div class="mdl-cell mdl-cell--12-col mdl-cell--8-col-tablet mdl-cell--4-col-phone mdl-card">
                            <!--<div class="mdl-card__title">-->
                            <!--Instructions: Download the master template and/or upload your company master template to activate a survey for your company-->
                            <!--</div>-->
                            <div class="role-container">
                                <div class="mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp upload jd">
                                    <div class="mdl-card__title mdl-card--expand">
                                        <h2 class="mdl-card__title-text">Upload Job Description</h2>
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <p>
                                            Upload one or more job descriptions.
                                            <br>Please ensure that the job description file(s) is/are in the <b>PDF</b> format.
                                            <!--<br>You can only upload one job description at a time.-->
                                        </p>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
                                            <input class="mdl-textfield__input" placeholder="Upload file here" type="text" id="uploadJdFiles"  readonly/>
                                            <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
                                                <i class="material-icons">attach_file</i>
                                                <input type="file" name = "file" id="uploadJd" accept=".pdf"  multiple="true">
                                            </div>
                                        </div>
                                        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" type = "submit" id="uploadJdSubmit">Upload File</a>
                                    </div>
                                </div>
                                <div class="mdl-cell mdl-cell--6-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp upload resume">
                                    <div class="mdl-card__title mdl-card--expand">
                                        <h2 class="mdl-card__title-text">Upload résumé</h2>
                                    </div>
                                    <div class="mdl-card__supporting-text">
                                        <p>
                                            Upload one or more résumés
                                            <br>Please ensure that the résumés are in either of <b>.doc</b>, <b>.docx</b> or <b>PDF</b> formats
                                            <!--<br>Ensure that only a csv format file is uploaded, in the format specified-->
                                        </p>
                                        <div class="mdl-selectfield mdl-js-selectfield  mdl-selectfield--floating-label">
                                            <select id="dropdown_jdForResumeUpload" name="jdForResume" class="mdl-selectfield__select" required>
                                                <option value="MSBI">MSBI - Technical Manager</option>
                                                <option value="BI">Corporate Loan - SM</option>
                                            </select>
                                            <label class="mdl-selectfield__label" for="myselect">Select a JD</label>
                                            <span class="mdl-selectfield__error">Please select a JD for which the résumés are being uploaded</span>
                                        </div>
                                    </div>
                                    <div class="mdl-card__actions mdl-card--border">
                                        <div class="mdl-textfield mdl-js-textfield mdl-textfield--file">
                                            <input class="mdl-textfield__input" placeholder="Upload file here" type="text" id="uploadResumeFiles"  readonly/>
                                            <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
                                                <i class="material-icons">attach_file</i>
                                                <input type="file"  name = "files" id="uploadResume" accept=".pdf,.doc,.docx" multiple="true">
                                            </div>
                                        </div>
                                        <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect" type = "submit" id="uploadResumeSubmit">Upload File</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
        <div id="snackbar" class="mdl-js-snackbar mdl-snackbar">
            <div class="mdl-snackbar__text"></div>
            <button class="mdl-snackbar__action" type="button"></button>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/mdl-selectfield.min.js"></script>
        <script src="assets/js/upload.js"></script>
    </body>
</html>
