<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.json.simple.JSONArray" %>
<%@ page import="org.json.simple.JSONObject" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="java.io.FileReader" %>
<%@ page import="java.io.FileWriter" %>
<%
if (request.getMethod().equals("POST")) {
    // 獲取表單數據
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String ticketForm = request.getParameter("TicketForm");
    String number = request.getParameter("number");
    String message = request.getParameter("message");

    // 創建JSON物件
    JSONObject json = new JSONObject();
    json.put("name", name);
    json.put("email", email);
    json.put("phone", phone);
    json.put("ticketForm", ticketForm);
    json.put("number", number);
    json.put("message", message);

    // 讀取現有JSON檔案或建立新的JSONArray
    JSONArray jsonArray;
    try {
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(new FileReader("json_files/file.json"));
        jsonArray = (JSONArray) obj;
    } catch (Exception e) {
        jsonArray = new JSONArray();
    }

    // 將JSON物件加入JSONArray
    jsonArray.add(json);

    // 寫入JSON檔案
    try (FileWriter file = new FileWriter("json_files/file.json")) {
        file.write(jsonArray.toJSONString());
        file.flush();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
%>


<body>
    <div class="ticket-form-body">
        <h2>購買結果：</h2>
        <p>姓名： <%= request.getParameter("name") %></p>
        <p>Email： <%= request.getParameter("email") %></p>
        <p>電話： <%= request.getParameter("phone") %></p>
        <p>款式： <%= request.getParameter("TicketForm") %></p>
        <p>票數： <%= request.getParameter("number") %></p>
        <p>其他要求： <%= request.getParameter("message") %></p>
    </div>
</body>