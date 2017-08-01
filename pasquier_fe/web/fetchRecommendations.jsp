<%-- 
    Document   : fetchData
    Created on : 14 Jun, 2017, 3:16:38 PM
    Author     : rashmi
--%>


<%@page import="org.owen.parser.RecommendationHelper"%>
<%@page import="org.json.JSONObject"%>
<%@page import="org.json.JSONArray"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results Table</title>
    </head>
    <body>
        <%
            JSONObject jsonObj = new JSONObject(request.getParameter("jsonObj"));
            String jd = jsonObj.getString("jd");
            String location = jsonObj.getString("location");
            String experience = jsonObj.getString("experience");
            String qualification = jsonObj.getString("qualification");
            RecommendationHelper rh = new RecommendationHelper();
            String result = rh.getRecommendations(jd, location, experience, qualification);
            JSONArray arr = new JSONArray(result);

        %>
        <table class="mdl-data-table mdl-js-data-table">
            <thead>
                <tr>
                    <th>Rank</th>
                    <th class="mdl-data-table__cell--non-numeric">Candidate</th>
                    <th>Status</th>
                    <th class="mdl-data-table__cell--non-numeric">Action</th>
                </tr>
            </thead>
            <tbody>
                <%for (int i = 0; i < arr.length(); i++) {
                        JSONObject obj = arr.getJSONObject(i);
                        int resultId = (int) obj.get("resultId");
                        String filePath = "data/uploaded_resumes/" + (obj.get("filePath").toString().replaceAll(" ", "%20"));
                        String status = obj.get("status").toString();
                        String yesNo = "";
                        if (status.equals("Selected")) {
                            yesNo = "Y";
                        } else if (status.equals("Rejected")) {
                            yesNo = "N";
                        }
                %>
                <tr id="template_<%=resultId%>" class="<%=status%>">
                    <td><%=i + 1%></td>
                    <td class="mdl-data-table__cell--non-numeric name"><%=obj.get("fileName").toString().replaceAll("(?i).pdf", "")%></td>
                    <td><%=yesNo%></td>
                    <td class="mdl-data-table__cell--non-numeric link"><a class="mdl-button mdl-js-button mdl-button--icon mdl-js-ripple-effect" id="resume_<%=resultId%>" href=<%=filePath%> ><i class="material-icons">more_horiz</i></a></td>
            <div class="mdl-tooltip mdl-tooltip--top" for="resume_<%=resultId%>">
                View resume
            </div>
            <input type="hidden" id="keywords_<%=resultId%>" value="<%=obj.get("keywords")%>"/>
        </tr>
        <%}%>
    </tbody>
</table>


</body>
</html>