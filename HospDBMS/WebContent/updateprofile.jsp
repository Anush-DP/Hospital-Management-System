<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>newuser</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <script src="main.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.3.3/semantic.min.js">
    <link rel="stylesheet" href="newser.css">
</head>
<body >
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String Name = (String)session.getAttribute("Name");
String userID=null;
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "hospital_database";
String userId = "root";
String password = "1234";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
  <!--new user register page-->
<div class="new">
        <form class="ui form" method="post" action="successupdate.jsp?Name=<%=Name%>">
        <br><br>
        <h1>User | Update profile</h1><br>
                <h3 class="ui dividing header">Fill in  Information</h3>
                <div class="field">
                  <div class="two fields">
                    <div class="field">
                    <%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM patients_info where name='"+Name+"'";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                    
                  <label>Name</label>
                      <input type="text" name="name" placeholder="Enter your name" value="<%=resultSet.getString("name") %>">
                    </div>
                    <div class="field">
                    
                  <label>Password</label>
                      <input type="text" name="pwd" placeholder="Enter a password" value="<%=resultSet.getString("password") %>">
                    </div>
                   
                  </div>
                </div>
                <div class="two fields">
                  <div class="field">
                    <label>Contact number</label>
                    <input type="number" name="pno" placeholder="phone number" value="<%=resultSet.getString("contact_no") %>">
                    
                  </div>
                  <div class="field">
                    <label for="">Email id</label>
                    <input type="text" name="pemail" placeholder="email id" value="<%=resultSet.getString("email") %>">
                  </div>
                </div>
                <div class= "three fields">
                    <div class="field">
                  <label>Patient Address</label>
                    <input type="text" name="street" placeholder="Street Address" value="<%=resultSet.getString("street") %>">
                    </div>
                    <div class=" field">
                      <label for="">locality/Area</label>
                      <input type="text" name="area" placeholder="Area" value="<%=resultSet.getString("locality") %>">
                    </div>
                    <div class="field">
                      <label for="">Adhaar number</label>
                      <input type="number" name="aadhar" placeholder="adhaar number" value="<%=resultSet.getString("aadhar") %>">
                    </div>
                 
                </div>
                <div class="two fields">
                  <div class="field">
                    <label>State</label>
                    <select class="ui fluid dropdown" name="state">
                      <option value="<%=resultSet.getString("state") %>" >State</option>
                  <option value="AP">Andhra</option>
                  <option value="Arunachal">Arunachal pradesh</option>
                  <option value="Assam">Assam</option>
                  <option value="KA">Karnataka</option>
                  <option value="CA">California</option>
                  <option value="CO">Colorado</option>
                  <option value="CT">Connecticut</option>
                  <option value="DE">Delaware</option>
                  <option value="DC">District Of Columbia</option>
                  <option value="FL">Florida</option>
                  <option value="GA">Georgia</option>
                  <option value="HI">Hawaii</option>
                  <option value="ID">Idaho</option>
                  <option value="IL">Illinois</option>
                  <option value="IN">Indiana</option>
                  <option value="IA">Iowa</option>
                  <option value="KS">Kansas</option>
                  <option value="KY">Kentucky</option>
                  <option value="LA">Louisiana</option>
                  <option value="ME">Maine</option>
                  <option value="MD">Maryland</option>
                  <option value="MA">Massachusetts</option>
                  <option value="MI">Michigan</option>
                  <option value="MN">Minnesota</option>
                  <option value="MS">Mississippi</option>
                  <option value="MO">Missouri</option>
                  <option value="MT">Montana</option>
                  <option value="NE">Nebraska</option>
                  <option value="NV">Nevada</option>
                  <option value="NH">New Hampshire</option>
                  <option value="NJ">New Jersey</option>
                  <option value="NM">New Mexico</option>
                  <option value="NY">New York</option>
                  <option value="NC">North Carolina</option>
                  <option value="ND">North Dakota</option>
                  <option value="OH">Ohio</option>
                  <option value="OK">Oklahoma</option>
                  <option value="OR">Oregon</option>
                  <option value="PA">Pennsylvania</option>
                  <option value="RI">Rhode Island</option>
                  <option value="SC">South Carolina</option>
                  <option value="SD">South Dakota</option>
                  <option value="TN">Tennessee</option>
                  <option value="TX">Texas</option>
                  <option value="UT">Utah</option>
                  <option value="VT">Vermont</option>
                  <option value="VA">Virginia</option>
                  <option value="WA">Washington</option>
                  <option value="WV">West Virginia</option>
                  <option value="WI">Wisconsin</option>
                  <option value="WY">Wyoming</option>
                    </select>
                  </div>
                  <div class="field">
                    <label>Country</label>
                   <div class="field">
                    
                    <select class="ui fluid dropdown" name="country">
                      <option value="<%=resultSet.getString("country") %>">Country</option>
                  <option value="India">India</option>
                  <option value="Bangladesh">Bangaldesh</option>
                  <option value="Pakistan">Pakistan</option>
                  <option value="Srilanka">Srilanka</option>
                    </select>
                  </div>
                     </div>
                  </div>
                  <%
}

} catch (Exception e){
e.printStackTrace();
}
%>
               <center><a href="successupdate.jsp">
                   <button  class="ui green button">Submit ></button></a>
                  
                   </center>
                    
       
              </form>
            </div>  
</body>
</html>