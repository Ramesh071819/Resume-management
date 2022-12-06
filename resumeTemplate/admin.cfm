<cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
<cfset variables.qHrDetails=obj.allHrDetails()>
<cfinclude  template="formatInclude.cfm">
<link href="../resumeCssFiles/addUser.css" rel="stylesheet">
<cfoutput>
    <div class="container-fluid   bg-success">
      <div class="row mt-3 p-1">
        <div class=" col-md-2 p-1">
          <a id="createHr" class="text-white text-decoration-none" href="##">Create New HR Account</a>
        </div>
        <div class=" col-md-2 p-1">
            <!--- <a id="ViewAllHr" class="text-white text-decoration-none" href="##">View All HR</a> --->
        </div>
        <div class=" offset-md-6 col-md-1 d-flex">
          <i class="fa fa-user-circle-o fa-2x text-white mt-1"></i>
          <div class="ms-2 mt-2 text-white ">#session.Admin#</div> 
        </div>
        <div class="col-md-1  mt-2">
          <a href="index.cfm"  class="text-white text-decoration-none">Log out</a>
        </div>        
      </div>
    </div>
    <div class="container-fluid hrDetailsTable" >
      <table class="table mt-4 table-striped table-hover" id="myTable">
        <thead>
          <tr>          
            <th>First Name</th> 
            <th>MiddleName Name</th>
            <th>Last Name</th>
            <th>Email Id</th>
            <th>Gender</th>
            <th>Phone Number</th>
          </tr>
        </thead>               
        <tbody>
          <cfloop query = "#variables.qHrDetails#">          
            <tr class="">                              
              <td>#variables.qHrDetails.FirstName#</td>
              <td>#variables.qHrDetails.MiddleName#</td>
               <td>#variables.qHrDetails.LastName#</td>                                     
              <td>#variables.qHrDetails.Email#</td>
              <td>#variables.qHrDetails.Gender#</td>                                       
              <td>#variables.qHrDetails.Phonenumber#</td> 
              <td><button class="btn btn-outline-danger btn-sm  deleteBtn" id="#variables.qHrDetails.EmpId#"><i class="fa fa-trash fa-1x"></i></button></td>                                                                                                                                                                                    
            </tr>                               
          </cfloop>
        </tbody>
      </table>    
    </div> 
    <div class="modal" id="myModal3"> 
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="mt-3 text-center border-bottom">
            <h4 class="text-success">Create New HR</h4>
          </div>
          <div class="modal-body">
            <div class="container-fluid">
              <div class="row mt-5">  
                <div class="col-md-4">
                  <label class="labelName">Email </label>
                  <input type="text" class="form-control rounded" value='' id="hrEmail">      
                </div>
                <div class=" col-md-4">
                  <label class="labelName">Password </label>
                  <input type="text" class="form-control rounded" value='' id="hrPassword">
                </div>
                <div class=" col-md-4">
                  <label class="labelName">First Name</label>
                  <input type="text" class="form-control rounded" value='' id="fName">
                </div>
              </div>
              <div class="row mt-5">  
                <div class="col-md-4">
                  <label class="labelName">Middle Name</label>
                  <input type="text" class="form-control rounded" value='' id="mName" >      
                </div>
                <div class="col-md-4">
                  <label class="labelName">Last Number</label>
                  <input type="text" class="form-control rounded" value='' id="hrName" >      
                </div>
                <div class="col-md-4">
                  <label class="labelName">Phone Number</label>
                  <input type="text" class="form-control rounded" value='' id="hrmobile" maxlength="10">      
                </div>
              </div>                      
            </div>
          </div>  
          <div class="modal-footer border-top-0">
            <p class="hrdetailsError text-danger me-4"></p>
            <button type="button" class="btn btn-success saveBtn2">Save</button>
            <button type="button" class="btn btn-danger closeBtn2">close</button>
          </div>         
        </div>
      </div>
    </div>
    <!--- <div class="modal" id="myModal4"> 
      <div class="modal-dialog modal-lg">
        <div class="modal-content">
          <div class="modal-body">
            <div class="container-fluid mt-3" id="filterDetails" >      
              <h2 class="text-center text-success">All HR Details</h2>    
               <table class="table mt-4 table-striped table-hover" id="myTable"> 
                <thead>
                  <tr>          
                    <th>First Name</th> 
                    <th>Last Name</th>
                    <th>Email Id</th>
                    <th>Phone Number</th>
                  </tr>
                </thead>               
                <tbody>
                  <cfloop query = "#variables.qHrDetails#">          
                    <tr class="">                              
                      <td>#variables.qHrDetails.FirstName#</td>
                      <td>#variables.qHrDetails.MiddleName#</td>                                      
                      <td>#variables.qHrDetails.Email#</td>                                       
                      <td>#variables.qHrDetails.Phonenumber#</td> 
                      <td><button class="btn btn-outline-danger btn-sm  deleteBtn" id="#variables.qHrDetails.EmpId#"><i class="fa fa-trash fa-1x"></i></button></td>                                                                                                                                                                                    
                    </tr>                               
                  </cfloop>
                </tbody>
              </table>  
            </div>  
          </div>  
          <div class="modal-footer">
            <button type="button" class="btn btn-danger closeBtn3">close</button>
          </div>
        </div>
      </div>
    </div>--->  
</cfoutput>  
<script>
  $(document).ready(function(){
    $('.deleteBtn').click(function(){
      $(this).parents('tr').remove()
      $.ajax({
        url: '../resumeObject/addUser.cfc?method=ActiveHr',
        async: false,
        type: "get",
        data: 
        {     
          hrActive:$(this).attr('id'),
        },   
        success: function(rawData){                    
        },
        error: function (xhr) {                     
          }       
      });
    });
    $("#hrmobile").keydown(function(e){
      var key = e.charCode || e.keyCode || 0;          
      return (
        key == 8 || 
        key == 9 ||
        key == 13 ||
        key == 46 ||
        key == 110 ||
        key == 190 ||
        (key >= 35 && key <= 40) ||
        (key >= 48 && key <= 57) ||
        (key >= 96 && key <= 105)
      );         
    });
    $('#createHr').click(function(){
      $("#myModal3").show()
    })
    // $('#ViewAllHr').click(function(){
    //   $('#filterDetails').append($('.hrDetailsTable').html())
    //   $("#myModal4").show()
    // })
    $('.saveBtn2').click(function(){
      if($('#hrEmail').val()!='' && $('#hrPassword').val()!='' && $('#hrName').val()!='' && $('#hrmobile').val()!='' && $('#fName').val()!='' && $('#mName').val()!=''){
        $.ajax({
          url: '../resumeObject/addUser.cfc?method=hrdetails',
          async: false,
          type: "get",
          data: 
          {     
            hremail:$('#hrEmail').val(),
            hrpwd:$('#hrPassword').val(),
            hrLname:$('#hrName').val(),
            hrmobile:$('#hrmobile').val(),
            FirstName:$('#fName').val(),
            middleName:$('#mName').val()
          },   
          success: function(rawData){ 
            $("#myModal3").hide()
            location.reload()                
          },
          error: function (xhr) {                     
            }       
        });
      }
      else{
        $('.hrdetailsError').text('Please provide all Details')
      }  
    })
  
    $('.closeBtn2').click(function(){
       $('.hrdetailsError').text('')
      $("#myModal3").hide() 
    })    
    // $('.closeBtn3').click(function(){
    //   $("#myModal4").hide()
    //   location.reload() 
    // })
    $('#myTable').DataTable()
  });
</script>