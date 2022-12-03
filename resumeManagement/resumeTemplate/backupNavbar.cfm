<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
</head>
<body>
<cfoutput>
    <div class="container-fluid   bg-primary">
        <div class="row mt-3 p-3">
            <div class=" col-md-2 ">
                <a href="addUsers.cfm"  class="text-white text-decoration-none">Create profile</a>
            </div>
             <div class=" col-md-2 ">
                <p id="UploadNewFile">Uplaod File</p>
             </div>
             <div class="col-md-2">
                <a href="allCandidateDetails.cfm"  class="text-white text-decoration-none">All Candidates</a>
             </div>
            <div class=" offset-md-5 col-md-1 d-flex">
             <i class="fa fa-user-circle-o fa-2x"></i>
             <div class="ms-2 mt-2 ">#session.Name#</div> 
            </div>      
       </div>
    </div>
</cfoutput>

 <div class="modal" id="myModal1"> 
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <!-- Modal Header -->
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
      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-success saveBtn1">Save</button>
         <button type="button" class="btn btn-danger closeBtn1">close</button>
      </div>
    </div>
  </div>
</div>
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
                    location.reload()
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

</body>
</html>