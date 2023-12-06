<%@page import="com.entity.User"%>
<nav class="navbar navbar-expand-lg navbar-dark  bg-primary">
  <a class="navbar-brand" href="index.jsp"><i class="fas fa-phone-square-alt"></i> PhoneBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><i class="fas fa-home"></i>Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="addContact.jsp"><i class="fas fa-plus-square"></i>  Add Contact</a>
      </li>
 
      <li class="nav-item active">
        <a class="nav-link" href="viewContact.jsp"><i class="fas fa-eye"></i>View Contact</a>
      </li>
    </ul>
    <%  User user=(User)session.getAttribute("user");
    if(user==null)
    { 
    %>
    	  <form class="form-inline my-2 my-lg-0">
      <a href ="login.jsp" class = "btn btn-success"><i class="fas fa-user"></i> Login</a>
       <a href ="register.jsp" class="btn btn-danger ml-2"><i class="far fa-user"></i> SignUp</a>
    </form>
    	
    <%
    } else{
    %>
  	  <form class="form-inline my-2 my-lg-0">
       <button class ="btn btn-success"><%=user.getName()%></button>
       <a data-toggle="modal" data-target="#exampleModal"   class=" btn btn-danger ml-2 text-white">Logout</a>
    </form>
   <%
   }
    %>
  
  </div>
  <!-- logout popup-->
 

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Logout Popup</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center ">
      <h6>Do You Want Logout..</h6>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       <a href = "logout"  type="button" class="btn btn-primary">Logout</a>
      </div>
      <div class="modal-footer">

      </div>
    </div>
  </div>
</div>
</nav>     