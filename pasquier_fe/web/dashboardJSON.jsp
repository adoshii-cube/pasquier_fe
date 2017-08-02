<%-- 
    Document   : fetchData
    Created on : 14 Jun, 2017, 3:16:38 PM
    Author     : rashmi
--%>


<%@page import="org.owen.parser.RecommendationHelper"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            RecommendationHelper rh = new RecommendationHelper();
            String result = rh.getDashboardData();
            
            System.out.println(result);
            out.println(result);

        %>
        