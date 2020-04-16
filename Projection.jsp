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
  min-height: 1000px;
  width: 1000px

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
				      <th>Employee Name</th>
				      <th>Job Title</th>
				      <th>Supervisor</th>
				      <th>Department</th>
				      <th>Actual Salary</th>
				      <th>Performance</th>
				      <th>Bonus Rate</th>
				      <th>Acceptance</th>
				      <th>Projected Salary</th>
				      
				      
				      
				    </tr>
				  </thead>
				  <tbody>
				    <tr>
				      <td>John Brown</td>
				      <td>Developer</td>
				      <td>Eric R. Parr</td>
				      <td>IT Department</td>
				      <td>$45,000</td>
				      <td>SC</td>
				      <td>2.6%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$46,500</td>
				      
				    </tr>
				    <tr>
				      <td>Barbara Johnson</td>
				      <td>Advertiser</td>
				      <td>Aaron Doe</td>
				      <td>Advertising</td>
				      <td>$35,000</td>
				      <td>SC+</td>
				      <td>3%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$38,000</td>
				      
				    </tr>
				    <tr>
				      <td>Sarah Kollie</td>
				      <td>Project Manager</td>
				      <td>Eric R. Parr</td>
				      <td>Project Management</td>
				      <td>$40,000</td>
				      <td>SP</td>
				      <td>2.2%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$44,400</td>
				      
				    </tr>
				    <tr>
				      <td>James Doe</td>
				      <td>Advertiser</td>
				      <td>Aaron Doe</td>
				      <td>Advertising</td>
				      <td>$43,000</td>
				      <td>NI</td>
				      <td>0%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$43,000</td>
				      
				    </tr>
				    <tr>
				      <td>Prince Gibson</td>
				      <td>Software Developer</td>
				      <td>Eric R. Parr</td>
				      <td>IT Department</td>
				      <td>$42,000</td>
				      <td>EC</td>
				      <td>4.7%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$49,000</td>
				      
				    </tr>
				    <tr>
				      <td>Joan Sonpon</td>
				      <td>Accountant</td>
				      <td>Mary Lewis</td>
				      <td>Accounting</td>
				      <td>$41,000</td>
				      <td>EC</td>
				      <td>4.6%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$47,000</td>
				      
				    </tr>
				    <tr>
				      <td>Dude Philips</td>
				      <td>Accountant</td>
				      <td>Mary Lewis</td>
				      <td>Accounting</td>
				      <td>$43,600</td>
				      <td>OP</td>
				      <td>3.4%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$46,100</td>
				      
				    </tr>
				    <tr>
				      <td>Reggie Johnson</td>
				      <td>Developer</td>
				      <td>Eric R. Parr</td>
				      <td>IT Department</td>
				      <td>$49,100</td>
				      <td>EC</td>
				      <td>5.5%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$52,100</td>
				      
				    </tr>
				    <tr>
				      <td>Calvin Smith</td>
				      <td>Database Personnel</td>
				      <td>Eric R. Parr</td>
				      <td>IT Department</td>
				      <td>$43,400</td>
				      <td>SC</td>
				      <td>2.7%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$48,100</td>
				      
				    </tr>
				    <tr>
				      <td>Ross Taylor</td>
				      <td>Developer</td>
				      <td>Eric R. Parr</td>
				      <td>IT Department</td>
				      <td>$44,700</td>
				      <td>SP</td>
				      <td>2.0%</td>
				      <td>
				      <select id="Accept">
						  <option value="Accepted">Accept</option>
						  <option value="Denied">Deny</option>
						  <option value="" selected>Wait list</option>
					  </select>
					  </td>
				      <td>$45,200</td>
				      
				    </tr>
				  </tbody>
				</table>
				<center>
					<button onclick="myFunction()" id="myBtn">View more</button>
				</center>
				
				<center>
					<div class="imgcontainer">
						    <img src="M:\My_Website\MyWeb\Web\WebContent\BellCurve.jpg" alt="federal" width="50%" height=auto>
					</div>
					<p>Budget</p>
					<div class="imgcontainer">
						    <img src="M:\My_Website\MyWeb\Web\WebContent\Projections2.png" alt="federal" width="50%" height=auto>
					</div>
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