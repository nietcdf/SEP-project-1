<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
	<%@ page isThreadSafe="false"  %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


  <div class="page-header" style="    background-color: green;margin: -21px 0 20px;color: whitesmoke;padding-top: 21px;">
    <h1><center>Events Tracking Application</h1>    </center>  
  </div>

 <% 
            try {
                // loading the jdbc thin driver class
                Class.forName("com.mysql.jdbc.Driver");%>
                
    		 <h2><center> Connected to the Database</center></h2> 

           <%  } catch (Exception x) {
                System.out.println("Unable to load the driver class");
            }

            Connection con = null;
            Statement statement = null;
            try {	
			String server="10.194.8.46:8090";
			 String db="eventDB";
			 String user="root"; 
			String password="g3g3g3g3";
			String jdbcString = "jdbc:mysql://" + server + "/" + db + "?" + "user=" + user+ "&password=" + password;
            	con=DriverManager.getConnection(jdbcString );
            	System.out.println("Connected database successfully...");
                } 
            catch (Exception E) {
                        System.out.println("Unable to Connect to the Database");
                        %> <h1> Unable to Connect to the Database</h1> 
                        <h1> Try again Once </h1>
                        <%} 
						
            
           if (request.getParameter("q_no").equals("one")) {
            	 String query="insert into events (name,date,isRepeat,hours, monday,tuesday,wednesday,thursday, friday, saturday, sunday) values('"+request.getParameter("name_id")+"', '"+request.getParameter("date")+"', "+request.getParameter("isRepeat")+","+request.getParameter("No_of_hrs_per_day")+", "+request.getParameter("Mon")+", "+request.getParameter("Tues")+", "+request.getParameter("Wed")+", "+request.getParameter("Thurs")+", "+request.getParameter("Fri")+", "+request.getParameter("Sat")+", "+request.getParameter("Sun")+")";      
				 
                 System.out.println(query);
				
                statement = con.createStatement();
               
                if (statement.executeUpdate(query) > 0) {
                    %> <h3><center>Data Inserted Successfully</center></h3>
                <%} 
            else { %> <center><h3> Sorry Data Not inserted Successfully</h3> 
                                 <h3> Try again Once </h3></center>
                <%}  
            }
      
            con.close();
 %>
<center><a href="/hello-spring/" class="btn btn-primary">Insert Again!!</a></center>
</body>
</html>