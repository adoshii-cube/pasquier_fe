<%-- 
    Document   : index
    Created on : 27 Jul, 2017, 11:01:45 AM
    Author     : adoshi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
        <link rel="stylesheet" href="assets/css/index.css">
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
        <main class="mdl-layout__content">
            <div class="login-page-content">
                <div class="android-card-container mdl-grid">
                    <div class="mdl-layout-spacer"></div>
                    <div class="mdl-cell mdl-cell--4-col mdl-cell--4-col-tablet mdl-cell--4-col-phone mdl-card mdl-shadow--3dp login">
                        <div class="mdl-card__title">
                            <img class="android-logo-image" src="assets/images/OWEN_Logo.png" alt="OWEN Logo">
                        </div>
                        <div class="mdl-card__supporting-text">
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-width">
                                <input class="mdl-textfield__input" pattern="[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" type="text" id="username" name="username">
                                <label class="mdl-textfield__label" for="username">Username</label>
                                <span class="mdl-textfield__error">Please enter a valid username</span>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-width">
                                <input class="mdl-textfield__input" type="password" id="password" name="password">
                                <label class="mdl-textfield__label" for="password">Password</label>
                                <span class="mdl-textfield__error">Please enter a password</span>
                            </div>
                            <a href="">Forgot password?</a>
                        </div>
                        <div class="mdl-card__actions">
                            <!--<div class="mdl-layout-spacer"></div>-->
                            <a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-color--indigo-500 mdl-color-text--white" id="loginButton">LOGIN</a>
                        </div>
                    </div>
                    <div class="mdl-layout-spacer"></div>
                </div>
            </div>
            <footer class="mdl-mini-footer">
                <div class="mdl-mini-footer__left-section">
                    <div class="mdl-logo">OWEN is best compatible with Internet Explore Edge or Google Chrome 54.0 or above</div>
                    <!--                        <ul class="mdl-mini-footer__link-list">
                                                <li><a href="#">Help</a></li>
                                                <li><a href="#">Privacy & Terms</a></li>
                                            </ul>-->
                </div>
                <div class="mdl-mini-footer__right-section">
                    <div class="mdl-logo">© Copyright 2017&nbsp;i-Cube Analytics & Data Services&nbsp;Ver 1.0.0</div>
                    <!--<ul class="mdl-mini-footer__link-list">-->
                    <!--<li><a href="#">Help</a></li>-->
                    <!--<li><a href="#">Privacy & Terms</a></li>-->
                    <!--</ul>-->
                </div>
            </footer>
        </main>
        <div id="snackbar" class="mdl-js-snackbar mdl-snackbar">
            <div class="mdl-snackbar__text"></div>
            <button class="mdl-snackbar__action" type="button"></button>
        </div>
        <script src="assets/js/material.min.js"></script>
        <script src="assets/js/index.js"></script>
    </body>
</html>