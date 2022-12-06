<cfinclude  template="../resumeTemplate/formatInclude.cfm"> 
<link href="../resumeCssFiles/addUser.css" rel="stylesheet">
  <cfoutput>
    <div class="container-fluid  bg-success">
      <div class="d-flex p-2"> 
        <div class="mt-1">
          <a href="addUsers.cfm"  class="text-white text-decoration-none">Create profile</a>              
        </div>
        <div class="navcontent mt-1"> 
          <a href="hrlogin.cfm"  class="text-white text-decoration-none">Dashboard</a>
        </div>
        <div class="navcontent mt-1">
          <a href="allCandidateDetails.cfm"  class="text-white text-decoration-none">All Candidate Details</a>
        </div>
        <div class="d-flex navicon">
          <i class="fa fa-user-circle-o fa-2x text-white"></i>
          <div class="ms-2 mt-1 text-white">#session.Name#</div> 
        </div>
        <div class="mt-1">
          <a href="index.cfm"  class="text-white text-decoration-none">Logout</a>
        </div>     
      </div>
    </div>
  </cfoutput>
  <form action="../resumeAction/addUsersAction.cfm?fileUploaded='uploaded'" method="post" id="form" enctype="multipart/form-data">
    <div class="modal" id="myModal1"> 
      <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="text-success">Upload NewFile</h3>
          </div>
            <div class="modal-body">
              <div class="container-fluid">
                  <div class="row mt-5">  
                      <div class="offset-col-md-2 col-md-4">
                          <label class="labelName">Reference ID</label>
                          <input type="text" class="form-control" value='' id="refId" name="refnum">      
                      </div>
                      <div class=" col-md-6">
                          <input type="file" class="form-control" value='' id="newFile" name="upFile">
                      </div>                   
                  </div>
                  <div class="row"> 
                    <div class="col-md-2"></div> 
                    <div  class="text-danger col-md-4">
                          <P id="error"></P>
                    </div>
                  </div>
              </div>
            </div>  
          <div class="modal-footer">
            <button type="button" class="btn btn-success saveBtn1">Save</button>
            <button type="button" class="btn btn-danger closeBtn1">close</button>
          </div>
        </div>
      </div>
    </div>
  </form>
<script>
  $(document).ready(function(){
    $('#UploadNewFile').click(function(){
      $("#myModal1").show()
    })
    $('.closeBtn1').click(function(){
      $("#myModal1").hide()
    })
    $('.saveBtn1').click(function(){
      var newFilepathname=$('#newFile').val().replace('C:\\fakepath\\','C:\\resumeManagement\\upLoadFiles\\') 
      var newfileName=$('#newFile').val().replace('C:\\fakepath\\','')
      $.ajax({
        url: '../resumeObject/addUser.cfc?method=newfileUpload',
        async: false,
        type: "get",
        data: 
        {     
          newfile:newFilepathname,
          referenceId:$('#refId').val(),
          newfilename:newfileName
        },   
        success: function(rawData){ 
          if((($('#refId').val()=='') && ($('#newFile').val()=='')) || (($('#refId').val()!='') && ($('#newFile').val()!=''))){
            $("#myModal1").hide()
            // location.reload()
            $('#form').submit();
          }
          else{
            $('#error').text('please fill all fields')
          }
        },
        error: function (xhr) {                     
        }       
      })
    })  
  });
</script>
