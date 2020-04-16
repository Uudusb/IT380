<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!DOCTYPE html>
<html>

<style>


body {
  background: #2F4F4F;
}
* {
  font-family: sans-serif;
}

.content-table {
  border-collapse: collapse;
  margin: 25px 0;
  font-size: 0.9em;
  width: 100%;
  height: auto;
  border-radius: 5px 5px 0 0;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
  background-color: #009879;
  color: #ffffff;
  text-align: left;
  font-weight: bold;
}

.content-table th,
.content-table td {
  padding: 12px 15px;
}

.content-table tbody tr {
  border-bottom: 1px solid #dddddd;
}

.content-table tbody tr:nth-of-type(even) {
  background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
  border-bottom: 2px solid #009879;
}

.content-table tbody tr.active-row {
  font-weight: bold;
  color: #009879;
}

nav {
  float: left;
  width: 30%;
  height: 400px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  width: 70%;
  background-color: #f1f1f1;
  height: 400px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Profile container */
.profile {
  margin: 20px 0;
}

/* Profile sidebar */
.profile-sidebar {
  padding: 20px 0 10px 0;
  background: #fff;
}

.profile-userpic img {
  float: none;
  margin: 0 auto;
  width: 50%;
  height: auto;
  -webkit-border-radius: 50% !important;
  -moz-border-radius: 50% !important;
  border-radius: 50% !important;
}

.profile-usertitle {
  text-align: center;
  margin-top: 20px;
}

.profile-usertitle-name {
  color: #5a7391;
  font-size: 16px;
  font-weight: 600;
  margin-bottom: 7px;
}

.profile-usertitle-job {
  text-transform: uppercase;
  color: #5b9bd1;
  font-size: 12px;
  font-weight: 600;
  margin-bottom: 15px;
}

.profile-userbuttons {
  text-align: center;
  margin-top: 10px;
}

.profile-userbuttons .btn {
  text-transform: uppercase;
  font-size: 11px;
  font-weight: 600;
  padding: 6px 15px;
  margin-right: 5px;
}

.profile-userbuttons .btn:last-child {
  margin-right: 0px;
}
    
.profile-usermenu {
  margin-top: 30px;
}

.profile-usermenu ul li {
  border-bottom: 1px solid #f0f4f7;
}

.profile-usermenu ul li:last-child {
  border-bottom: none;
}

.profile-usermenu ul li a {
  color: #93a3b5;
  font-size: 14px;
  font-weight: 400;
}

.profile-usermenu ul li a i {
  margin-right: 8px;
  font-size: 14px;
}

.profile-usermenu ul li a:hover {
  background-color: #fafcfd;
  color: #5b9bd1;
}

.profile-usermenu ul li.active {
  border-bottom: none;
}

.profile-usermenu ul li.active a {
  color: #5b9bd1;
  background-color: #f6f9fb;
  border-left: 2px solid #5b9bd1;
  margin-left: -2px;
}

/* Profile Content */
.profile-content {
  padding: 20px;
  background: #fff;
  min-height: 460px;
}
  table    { border:ridge 5px black; background-color:#FFF; color: #000000; }
  table td { border:inset 1px #000; }

.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>

<header>
  <div class="imgcontainer">
    <img src="M:\My_Website\MyWeb\Web\WebContent\Federated2.png"  width="200" height=auto>
  </div>
</header>
<div class="container">
    <div class="row profile">
		<div class="col-md-3">
			<div class="profile-sidebar">
				<!-- SIDEBAR USERPIC -->
				<div class="profile-userpic">
					<center>
						<img src="M:\My_Website\MyWeb\Web\WebContent\Tariq.jfif" alt="ProfilePic">
					</center>
				</div>
				<!-- END SIDEBAR USERPIC -->
				<!-- SIDEBAR USER TITLE -->
				<div class="profile-usertitle">
					<div class="profile-usertitle-name">
						Tariq Islam
					</div>
					<div class="profile-usertitle-job">
						CIO
					</div>
				</div>
				<div class="profile-usermenu">
					<ul class="nav">
						<li class="active">
							<a href="Profile.jsp">
							<i class="glyphicon glyphicon-home"></i>
							Overview </a>
						</li>
						<li>
							<a href="Account.jsp">
							<i class="glyphicon glyphicon-user"></i>
							Account Settings </a>
						</li>
						<li>
							<a href="Department.jsp">
							<i class="glyphicon glyphicon-briefcase"></i>
							Team </a>
						</li>
						<li>
							<a href="Projection.jsp">
							<i class="glyphicon glyphicon-list-alt"></i>
							Projection </a>
						</li>
						<li>
							<a href="Performance.jsp">
							<i class="glyphicon glyphicon-flash"></i>
							Performance </a>
						</li>
						<li>
							<a href="Salary.jsp">
							<i class="glyphicon glyphicon-usd"></i>
							Salary </a>
						</li>
						<li>
							<a href="Login.jsp">
							<i class="glyphicon glyphicon-log-out"></i>
							Log out </a>
						</li>
					</ul>
				</div>
				<!-- END MENU -->
			</div>
		</div>
		<div class="col-md-9">
            <div class="profile-content">
            
			   <h1><font color = "black">Performance Review</font></h1>
			   <section>
				  <nav>
				    <ul>
				        <div class="imgcontainer">
							<img src="M:\My_Website\MyWeb\Web\WebContent\man.png"  width="150" height=auto>
						</div>
							<div class="profile-usertitle">
								<div class="profile-usertitle-name">
									Eric R. Parr
								</div>
								<div class="profile-usertitle-job">
									Supervisor
								</div>
						</div>
				    </ul>
				  </nav>
				  
				  <article>
				  	 <table class="content-table">
				  <thead>
				    <tr>
				      <td>EMPLOYEE ID</td>
				      <td>10001</td>
				    
				    </tr>
				  </thead> 
				  	<tbody>
				    <tr>
				      <td>EMPLOYEE NAME</td>
				      <td>Eric R. Parr</td>
				    </tr>
				    <tr>
				      <td>POSITION</td>
				      <td>Supervisor</td>
				    </tr>
				    <tr>
				      <td>EMPLOYEE DEPARTMENT</td>
				      <td>IT</td>
				    </tr>
				    <tr>
				      <td>EMPLOYEE SUPERVISOR</td>
				      <td>Tariq Islam</td>
				    </tr>
				      <td>ACTUAL SALARY</td>
				      <td>$48,750</td>
				    </tr>
				    <tr>
				      <td>EMPLOYEE PERFORMANCE</td>
				      <td>SC</td>
				    </tr>
				    <tr>
				      <td>PROJECTED SALARY</td>
				      <td>$51,350</td>
				    </tr>
				  </tbody>
				</table>
				 </article>
				</section>
				<center>
				<section>
					<p></p>
					<table class="tg" bgcolor="2f4f4f">
					  <tr >
					    <th class="tg-cly1">Factors</th>
					    <th class="tg-cly1">Dimensions</th>
					    <th class="tg-cly1" colspan="3">Ratings</th>
					  </tr>
					  <tr>
					    <td class="tg-cly1" colspan="2"></td>
					    <td class="tg-cly1">NI</td>
					    <td class="tg-0lax">SC</td>
					    <td class="tg-0lax">EC</td>
					  </tr>
					  <tr>
					    <td class="tg-cly1" colspan="5"><span style="font-style:italic">KNOWLEDGE</span></td>
					  </tr>
					  <tr>
					    <td class="tg-0lax">Job and Business Knowledge</td>
					    <td class="tg-0lax">Self Development, Job Expertise / Knowledge Resource,<br>Business Plan Disciplines, Industry Expertise, Problem Solving</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings1" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings1" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings1" value="EC"></td>
					  </tr>
					  <br>
					  <tr>
					    <td class="tg-0lax">Administration</td>
					    <td class="tg-0lax">Quarterly Goals and Objectives, Work Efficiency, Plan and<br>Organize, Procedure and Process Orientation</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings2" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings2" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings2" value="EC"></td>
					  </tr>
					  <br>
					  <tr>
					    <td class="tg-0lax" colspan="5"><span style="font-style:italic">ENERGY</span></td>
					  </tr>
					  <tr>
					    <td class="tg-0lax">Motivation / Drive</td>
					    <td class="tg-0lax">Energy, Initiative and Urgency, Innovation, Results Oriented,<br>Perseverance</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings3" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings3" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings3" value="EC"></td>
					  </tr>
					  <br>
					  <tr>
					    <td class="tg-0lax">Professional Accountability</td>
					    <td class="tg-0lax">Build Relationships, Disciplined Behavior, Personal <br>Accountability, Foster Teamwork, Optimism</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings4" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings4" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings4" value="EC"><br></td>
					  </tr>
					  <tr>
					    <td class="tg-0lax" colspan="5"><span style="font-style:italic">PASSION</span></td>
					  </tr>
					  <tr>
					    <td class="tg-0lax">Commitment</td>
					    <td class="tg-0lax">Job and Organizational Commitment, Customer Focus, Value<br>Diversity, Manage Change, Resilience</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings5" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings5" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings5" value="EC"><br></td>
					  </tr>
					  <tr>
					    <td class="tg-0lax">Leadership</td>
					    <td class="tg-0lax">Selection and Development, Motivate Performance, Lead By<br>Example, Provide Direction, Influence Others, Communicate<br>Effectively</td>
					    <td class="tg-0lax"><input type="radio" name="Ratings6" value="NI"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings6" value="SC"><br></td>
					    <td class="tg-0lax"><input type="radio" name="Ratings6" value="EC"><br></td>
					  </tr>
					</table>
					</section>
					
					
					<p></p>
					<form action="/action_page.php">
				  		<input type="submit" value="Submit">
				  	</form>
				</center>
            </div>
		</div>
	</div>
</div>
<footer>
  <div class="imgcontainer">
    <img src="M:\My_Website\MyWeb\Web\WebContent\Footer.png" alt="federal" width="100%" height=auto>
  </div>
</footer>
<br>
<br>