<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin login</title>
</head>
<body>
  <!--admin login page-->
    <div class="ui container login">
        <div class="ui   red centered   card">
           
 <form class="ui  form log" method="post" action="/adminlogin">
                         <div class="field">
                         <div  class="sixteen wide field">  
                          
                           <label class="header">User Name</label>
                           <input type="text" name="username" placeholder="username">
                         </div>
                        </div>
                         <div class="field">
                        <div  class="sixteen wide field">   
                           <label class="ui header">Password</label>
                           <input type="password" name="password" placeholder="password">
                         </div>
                         </div>
                         <button class="ui button" type="submit" value="submit">Submit</button>
 </form>
      </div>
     </div> 
</body>
</html>