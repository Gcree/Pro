
<%@ include file="fragments/Showheader.html" %>
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.io.*" %>
<%@ page import="org.json.simple.*" %>
<%@ page import="org.json.simple.parser.*" %>


<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String subject= request.getParameter("subject");
String message = request.getParameter("message");
%>

<%
  // 建立JSON物件並設定屬性值
  JSONObject jsonObject = new JSONObject();
  jsonObject.put("name", name);
  jsonObject.put("email", email);
  jsonObject.put("subject", subject);
  jsonObject.put("message", message);

  // 讀取現有JSON檔案或建立新的JSONArray
  JSONArray jsonArray;
  try {
    jsonArray = (JSONArray) JSONValue.parse(new FileReader("json_files/data.json"));
  } catch (Exception e) {
    jsonArray = new JSONArray();
  }

  // 將JSON物件加入JSONArray
  jsonArray.add(jsonObject);

  // 寫入JSON檔案
  try (FileWriter file = new FileWriter("json_files/data.json")) {
    file.write(jsonArray.toJSONString());
    file.flush();
  } catch (Exception e) {
    e.printStackTrace();
  }
%>

<section id="show" class="show">
	<div class="container">
			<div id="end" class="row ">
				<h1>執行結果</h1>
			</div>
		<div id="first" class="row ">
			<div class="col-md-6 col-sm-6">
				<p>姓名: <%= name %></p>
			</div>
			<div class="col-md-6 col-sm-6">
				<p>Email: <%= email %></p>
			</div>
		</div>
		<div id="second" class="row ">
			<div class="col-12">
				<p>主旨: <%= subject %></p>
			</div>
		</div>
		<div id="third" class="row ">
			<div class="col-12">
				<p>內容: <%= message %></p>
			</div>
		</div>
			<div id="data" class="row">
				<h5>已自動儲存資料至系統！感謝您的填寫！</h5>
			</div>
		</div>
	</div>
</section>
<%@ include file="fragments/Showfooter.html" %>
