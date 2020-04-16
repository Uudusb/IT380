<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!DOCTYPE html>
<html>

<style>

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

body {
  background: #2F4F4F;
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
            
			   <table class="content-table">
				  <thead>
				    <tr>
					    <th>PAYMENT DATE</th>
					    <th>PAYMENT AMOUNT</th>
					    <th>BONUS</th>
					    <th>TOTAL AMOUNT</th>
					</tr>
				  </thead>
				  <tbody>
				  	<tr>
					    <td>14/02/2020</td>
					    <td>$4812.13</td>
					    <td>$0.0</td>
					    <td>$4812.13</td>
					  </tr>
					  <tr>
					    <td>14/01/2020</td>
					    <td>$4845.23</td>
					    <td>$0.0</td>
					    <td>$4845.23</td>
					  </tr>
					  <tr>
					    <td>14/12/2019</td>
					    <td>$4902.31</td>
					    <td>$0.0</td>
					    <td>$4902.11</td>
					  </tr>
					  <tr>
					    <td>14/11/2019</td>
					    <td>$4689.55</td>
					    <td>$0.0</td>
					    <td>$4689.55</td>
					  </tr>
					  <tr>
					    <td>14/10/2019</td>
					    <td>$4745.48</td>
					    <td>$0.0</td>
					    <td>$4745.48</td>
					  </tr>
					  <tr>
					    <td>14/10/2019</td>
					    <td>$4745.48</td>
					    <td>$0.0</td>
					    <td>$4745.48</td>
					  </tr>
					  <tr>
					    <td>14/09/2019</td>
					    <td>$4711.98</td>
					    <td>$0.0</td>
					    <td>$4711.98</td>
					  </tr>
					  <tr>
					    <td>14/08/2019</td>
					    <td>$4455.66</td>
					    <td>$0.0</td>
					    <td>$4455.66</td>
					  </tr>
					  <tr>
					    <td>14/07/2019</td>
					    <td>$4745.48</td>
					    <td>$0.0</td>
					    <td>$4745.48</td>
					  </tr>
					  <tr>
				  </tbody>
				</table>
				<center>
					<button onclick="myFunction()" id="myBtn">View more</button>
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