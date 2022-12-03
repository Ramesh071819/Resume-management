
<link href="../resumeCssFiles/addUser.css" rel="stylesheet">
<cfinclude  template="../resumeTemplate/formatInclude.cfm"> 
<!---  --->
<cfoutput>
  <body style="background-color:Whitesmoke">
    <div class="container-fluid" style="background-color:Whitesmoke">
      <h4 class="text-center text-primary ">All Candidate Details</h4>    
      <table class="table mt-4 table-striped table-hover" id="tableForFile">
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
            <tr id="#variables.qDetails.candidateId#">                              
              <td>#variables.qDetails.FirstName#</td>
              <td>#variables.qDetails.MiddleName#</td>                                      
              <td>#variables.qDetails.LastName#</td>                                       
              <td>#variables.qDetails.Email#</td>
              <td>#variables.qDetails.MobileNumber#</td>                                                                                 
              <td  class="SourceFile1" multifileId="#variables.qDetails.candidateId#"><i class="fa fa-file" ></i></td>
              <td> 
                <div class="col-md-3">
                  <button class="btn btn-outline-success btn-sm editBtn1" dbId="#variables.qDetails.candidateId#"><i class="fa fa-edit fa-1x" ></i></button> 
                </div>
              </td>                                                                                                            
            </tr>                               
          </cfloop>   
        </tbody>
      </table>
    </div>      
    <div class="modal" id="myModalForDetails">
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
                      <input type="text" class="form-control text-secondary charOnly" value='' id="dfname1" name="dfname">      
                    </div>
                    <div class=" col-md-4">
                      <label class="labelName">Middle Name</label>
                      <input type="text" class="form-control text-secondary charOnly" value='' id="dmname1" name="dmname">
                    </div>
                    <div class=" col-md-4">
                      <label class="labelName">Last Name</label>
                      <input type="text" class="form-control text-secondary charOnly" value='' id="dlname1" name="dlname">
                    </div>                     
                  </div>
                  <div class="row mt-3">
                    <div class="col-md-4">
                        <label class="labelName">Email</label>
                        <input type="email" class="form-control text-secondary" value='' id="demail1">
                    </div>
                    <div class=" col-md-4">
                        <label class="labelName">CTC</label>
                      <input type="text" class="form-control text-secondary numOnly" value='' id="dctc1">
                    </div>
                    <div class=" col-md-4">
                      <label class="labelName">Address</label>
                      <input type="text" class="form-control text-secondary" value='' id="daddress1">
                    </div>  
                  </div>
                  <div class="row mt-3">
                    <div class=" col-md-4">
                      <label class="labelName">City</label>
                      <input type="text" class="form-control text-secondary charOnly" value='' id="dcity1">
                    </div>
                    <div class="col-md-4">
                      <label class="labelName">State</label>
                      <input type="text" class="form-control text-secondary charOnly" value='' id="dstate1">
                    </div>
                    <div class=" col-md-4">
                      <label class="labelName">Phone Number</label>
                      <input type="text" class="form-control text-secondary numOnly" value='' id="dnumber1" name="dnumber">
                    </div>  
                  </div>
                  <div class="row mt-3">
                    <div class="offset-md-3 col-md-6">
                      <input type='file' class="form-control fieldBorder"   multiple maxlength="10" id="file_input2" name="file_input1">
                    </div> 
                  </div>
                  <div class="row mt-3">
                    <div class="errorMsg1 text-danger"></div>
                  </div>                                
                </div>
              </div>  
              <div class="modal-footer">
                <button type="button" class="btn btn-success saveBtn1" data-bs-dismiss="modal" >Save</button>
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
              <h3 class="text-primary">Upload File</h3>
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
  </body>
</cfoutput>
<script>
  $(document).ready( function () { 
    $('.charOnly').keydown(function (e) {
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
    $(".numOnly").keydown(function(e){
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
    $(document).on("click",".SourceFile1",function() { 
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
            $('#modalText').append("<a href='http://infoane20:8500/resumeManagement/resumeTemplate/upLoadFile/"+result.DATA[i]+"' id='getingFileName' class='text-decoration-none' target='_blank'>"+result.DATA[i]+"</a>"+ "<br>")
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
    $(document).on("click",".editBtn1",function() { 
      $("#myModalForDetails").show()  
      var dbid=$(this).attr('dbId');
      $('.saveBtn1').val(dbid)
      $.ajax({
        url: '../resumeObject/addUser.cfc?method=getSingleCandidateDetails',
        async: false,
        type: "get",
        data: {
          Details: dbid                                                 
        },
        success: function (rawData) { 
          var   result=JSON.parse(rawData);
                             
          $('#dfname1').val(result.DATA[0][0])
          $('#dmname1').val(result.DATA[0][1])
          $('#dlname1').val(result.DATA[0][2])
          $('#demail1').val(result.DATA[0][3])
          $('#dctc1').val(result.DATA[0][4])
          $('#daddress1').val(result.DATA[0][7])
          $('#dcity1').val(result.DATA[0][5])
          $('#dstate1').val(result.DATA[0][8])
          $('#dnumber1').val(result.DATA[0][6])
          $('#file_input2').val(result.DATA[0][9])
        },
        error: function (xhr) {            
        }              
      });
    });
    $(document).on('click','.saveBtn1',function() {
      var eId = $(this).val();      
      $("."+eId+"").find("td:eq(0)").text($('#dfname1').val())
      $("."+eId+"").find("td:eq(1)").text($('#dmname1').val())
      $("."+eId+"").find("td:eq(2)").text($('#dlname1').val())
      $("."+eId+"").find("td:eq(3)").text($('#demail1').val())
       var updatedfile=$('#file_input2').val()
       var updatedfileName=updatedfile.replace("C:\\fakepath\\","")
       var updatedfilePath=updatedfile.replace("C:\\fakepath\\","C:\\resumeManagement\\upLoadFiles\\")
      // $(".modal").hide();
      if(($('#dfname1').val() !='')&& ($('#dlname1').val() !='')&& ($('#demail1').val() !='')&& ($('#dctc1').val() !='')&&
        ($('#daddress1').val() !='')&& ($('#dcity1').val() !='')&& ($('#dstate1').val() !='')&& ($('#dnumber1').val() !='')&& ($('#file_input2').val() !='')){
        $.ajax({
          url: '../resumeObject/addUser.cfc?method=UpdateSingleCandidateDetails',
          async: false,
          type: "get",
          data: {
            dbID1:eId ,
            fname:$('#dfname1').val(),                                                 
            mname:$('#dmname1').val(),                                                 
            lname:$('#dlname1').val(),                                                 
            email:$('#demail1').val(),                                                 
            ctc:$('#dctc1').val(),                                                 
            address:$('#daddress1').val(),                                                 
            city:$('#dcity1').val(),                                                 
            state:$('#dstate1').val(),                                                 
            number:$('#dnumber1').val(), 
            uploadedFiles: updatedfilePath,
            uploadedFileName:updatedfileName                                                                                                              
          },
          success: function (rawData) { 
                $('#form3').submit();
                $("#myModalForDetails").hide();
            
          },
          error: function (xhr) {            
          }
        })
      }else{
        $('.errorMsg1').html("please provide all Details")
      }      
    })
    $(document).on('click','.closebtn2',function() {
      $('#myModalForDetails').hide();
    })
    $('#tableForFile').DataTable();
  });
</script>
      