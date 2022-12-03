<cfinclude  template="../resumeTemplate/navbar.cfm"> 
<link href="../resumeCssFiles/addUser.css" rel="stylesheet">
<cfinclude  template="../resumeTemplate/formatInclude.cfm"> 
<!---  --->
<cfoutput>
  <div class="container-fluid mt-3">
    <h4 class="text-center text-success ">All Candidate Details</h4>    
    <table class="table mt-4 table-striped table-hover" id="myTable">
      <thead>
        <tr>          
          <th>First Name</th> 
          <th>Middle Name</th>
          <th>Last Name</th>
          <th>Email</th>
          <th>Mobile Number</th>
          <th>Uploaded Files</th>
          <th>Manage</th> 
        </tr>
      </thead>               
      <tbody>
        <cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
        <cfset variables.qDetails=obj.getCandidateDetails()>
        <cfloop query = "variables.qDetails">          
          <tr id="#variables.qDetails.CandidateId#">                              
            <td>#variables.qDetails.FirstName#</td>
            <td>#variables.qDetails.MiddleName#</td>                                      
            <td>#variables.qDetails.LastName#</td>                                       
            <td>#variables.qDetails.Email#</td>
            <td>#variables.qDetails.MobileNumber#</td>                                                                                 
            <td  class="SourceFile" multifileId="#variables.qDetails.CandidateId#"><i class="fa fa-file" ></i></td>
            <td> 
              <div class="col-md-3">
                <button class="btn btn-outline-success btn-sm editBtn" dbId="#variables.qDetails.CandidateId#"><i class="fa fa-edit fa-1x" ></i></button> 
              </div>
            </td>                                                                                                            
          </tr>                               
        </cfloop>   
      </tbody>
    </table>
  </div>      
  <div class="modal" id="myModal">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content " style="color:gray">
        <form action="../resumeAction/addUsersAction.cfm" method="post" id="form3" enctype="multipart/form-data">
          <div class="modal-header">
            <div class="offset-md-1"></div>
            <div class="col-md-7">
              <h4 class="modal-title text-success ">All Details</h4>
            </div>
          </div>
          <div class="modal-body">
            <div class="container-fluid">
              <div class="row mt-3">  
                <div class=" col-md-4">
                  <label class="labelName">First Name</label>
                  <input type="text" class="form-control text-secondary" value='' id="dfname" name="dfname">      
                </div>
                <div class=" col-md-4">
                  <label class="labelName">Middle Name</label>
                  <input type="text" class="form-control text-secondary" value='' id="dmname" name="dmname">
                </div>
                <div class=" col-md-4">
                  <label class="labelName">Last Name</label>
                  <input type="text" class="form-control text-secondary" value='' id="dlname" name="dlname">
                </div>                     
              </div>
              <div class="row mt-3">
                <div class="col-md-4">
                    <label class="labelName">Email</label>
                    <input type="email" class="form-control text-secondary" value='' id="demail">
                </div>
                <div class=" col-md-4">
                    <label class="labelName">CTC</label>
                  <input type="text" class="form-control text-secondary" value='' id="dctc">
                </div>
                <div class=" col-md-4">
                  <label class="labelName">Address</label>
                  <input type="text" class="form-control text-secondary" value='' id="daddress">
                </div>  
              </div>
              <div class="row mt-3">
                <div class=" col-md-4">
                  <label class="labelName">City</label>
                  <input type="text" class="form-control text-secondary" value='' id="dcity">
                </div>
                <div class="col-md-4">
                  <label class="labelName">State</label>
                  <input type="text" class="form-control text-secondary" value='' id="dstate">
                </div>
                <div class=" col-md-4">
                  <label class="labelName">Phone Number</label>
                  <input type="text" class="form-control text-secondary" value='' id="dnumber" name="dnumber">
                </div>  
              </div>
              <div class="row mt-3">
                <div class="offset-md-3 col-md-6">
                  <input type='file' class="form-control fieldBorder"   multiple maxlength="10" id="file_input1" name="file_input1">
                </div> 
              </div>
              <div class="row mt-3">
                <div class="errorMsg text-danger"></div>
              </div>                                
            </div>
          </div>  
          <div class="modal-footer">
            <button type="button" class="btn btn-success saveBtn2" data-bs-dismiss="modal" >Save</button>
            <button class="closebtn2 btn btn-danger" type="button">close</button>
          </div>
        </form>
      </div>
    </div>
  </div>
  <div class="modal" id="myModalForFile"> 
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h3 class="text-success">Upload File</h3>
        </div>
        <div class="modal-body" id="modalText">
        </div>          
        <div class="modal-footer">
  <!---           <button type="button" class="btn btn-success openBtn1" getuploadedfile="">open</button> --->
          <button type="button" class="btn btn-danger closeBtn1">close</button>
        </div>
      </div>
    </div>
  </div>
</cfoutput>
<script>
  $(document).ready( function () { 
    $('#dfname,#dmname,#dlname,#dcity,#dcity,#dstate').keydown(function (e) {
      if (e.shiftKey || e.ctrlKey || e.altKey) {         
        e.preventDefault();              
      } 
      else {
        var key = e.keyCode;
        if (!((key == 8) || (key == 32) || (key == 46) || (key >= 35 && key <= 40) || (key >= 65 && key <= 90))) {
            e.preventDefault();               
        }
      }
    }); 
    $("#dnumber,#dctc").keydown(function(e){
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
    $(document).on("click",".SourceFile",function() { 
      $.ajax({
        url: '../resumeObject/addUser.cfc?method=candidateUploadedFiles',
        async: false,
        type: "get",
        data: {
          allFiles:$(this).parent('tr').attr('id')                                                 
        },
        success: function (rawData) {
        
            var   result=JSON.parse(rawData);  
          $('#modalText').html('');
          for(let i = 0; i < result.DATA.length; i++) {
            $('#modalText').append("<a href='http://infoane20:8500/resumeManagement/resumeTemplate/upLoadFile/"+result.DATA[i]+"' id='getingFileName' class='text-decoration-none text-success' target='_blank'>"+result.DATA[i]+"</a>"+ "<br>")
          }
          $('#myModalForFile').show()
        },
        error: function (xhr) {            
        }   
      });
        //  $('#getingFileName').text($(this).attr("id"))
        //    $('#getingFileName').attr("href","http://infoane20:8500/resumeManagement/resumeTemplate/upLoadFile/"+$(this).attr("id"))
        //  $('.openBtn1').attr('getuploadedfile',$(this).attr("id"))
        //  $('#myModalForFile').show()
    });
    //   // var fileloc="../resumeTemplate/upLoadFile/"+$(this).attr("id")+"";
    //   // location.href = fileloc
      //   $.ajax({
      //     url: '../resumeObject/addUser.cfc?method=candidateUploadedFiles',
      //     async: false,
      //     type: "get",
      //     data: {
      //       allFiles:$(this).attr("id")                                                  
      //     },
      //     success: function (rawData) {
      //       //  var   result=JSON.parse(rawData);  
      //       alert(rawData)
      //     },
      //   error: function (xhr) {            
      //   }   
      // });
    $(document).on("click",".closeBtn1",function() {
      $('#myModalForFile').hide()
    })
    // $(document).on("click",".openBtn1",function() {
    //   var fileloc="../resumeTemplate/upLoadFile/"+$(this).attr("getuploadedfile")+"";
    //   location.href = fileloc
    //   $('#myModalForFile').hide()
    // })
    $(document).on("click",".editBtn",function() { 
      $("#myModal").show()  
      var dbid=$(this).attr('dbId');
      $('.saveBtn2').val(dbid)
      $.ajax({
        url: '../resumeObject/addUser.cfc?method=getSingleCandidateDetails',
        async: false,
        type: "get",
        data: {
          Details: dbid                                                 
        },
        success: function (rawData) { 
          var   result=JSON.parse(rawData);
                 alert(result)            
          $('#dfname').val(result.DATA[0][0])
          $('#dmname').val(result.DATA[0][1])
          $('#dlname').val(result.DATA[0][2])
          $('#demail').val(result.DATA[0][3])
          $('#dctc').val(result.DATA[0][4])
          $('#daddress').val(result.DATA[0][7])
          $('#dcity').val(result.DATA[0][5])
          $('#dstate').val(result.DATA[0][8])
          $('#dnumber').val(result.DATA[0][6])
          $('#file_input1').val(result.DATA[0][9])
        },
        error: function (xhr) {            
        }              
      });
    });
    $(document).on('click','.saveBtn2',function() {
      var eId = $(this).val();      
      $("."+eId+"").find("td:eq(0)").text($('#dfname').val())
      $("."+eId+"").find("td:eq(1)").text($('#dmname').val())
      $("."+eId+"").find("td:eq(2)").text($('#dlname').val())
      $("."+eId+"").find("td:eq(3)").text($('#demail').val())
      var updatedfile=$('#file_input1').val()
      var updatedfileName=updatedfile.replace("C:\\fakepath\\","")
      var updatedfilePath=updatedfile.replace("C:\\fakepath\\","C:\\resumeManagement\\upLoadFiles\\")
      // $(".modal").hide();
      if(($('#dfname').val() !='')&& ($('#dlname').val() !='')&& ($('#demail').val() !='')&& ($('#dctc').val() !='')&&
        ($('#daddress').val() !='')&& ($('#dcity').val() !='')&& ($('#dstate').val() !='')&& ($('#dnumber').val() !='')&& ($('#file_input1').val() !='')){
        $.ajax({
          url: '../resumeObject/addUser.cfc?method=UpdateSingleCandidateDetails',
          async: false,
          type: "get",
          data: {
            dbID1:eId ,
            fname:$('#dfname').val(),                                                 
            mname:$('#dmname').val(),                                                 
            lname:$('#dlname').val(),                                                 
            email:$('#demail').val(),                                                 
            ctc:$('#dctc').val(),                                                 
            address:$('#daddress').val(),                                                 
            city:$('#dcity').val(),                                                 
            state:$('#dstate').val(),                                                 
            number:$('#dnumber').val(), 
            uploadedFiles: updatedfilePath,
            uploadedFileName:updatedfileName                                                                                                              
          },
          success: function (rawData) { 
                $('#form3').submit();
                $("#myModal").hide();
            
          },
          error: function (xhr) {            
          }
        })
      }else{
        $('.errorMsg').html("please provide all Details")
      }      
    })
    $(document).on('click','.closebtn2',function() {
      $('#myModal').hide();
    })
    $('#myTable').DataTable();
  });
</script>
      