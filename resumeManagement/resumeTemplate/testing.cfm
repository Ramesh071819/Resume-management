<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" /> 
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <title>Document</title>
    </head>
<body>
<div class="row">
<a href="http://infoane20:8500/resumeManagement/resumeTemplate/upLoadFile/Mind-Blowing-Landscape-Photography-20.jpg" target="_blank">sdassdsa</a>
<form action="">
    <div class="col-md-4 ">
        <label class='labelName'>First Name<span class="important">*</span></label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus cool" error1="First Name"  name="firstName"   id="firstName"  placeholder="">                         
        <p id="firstNameError" class="text-danger fieldError"></p> 
    </div>
    <div class="col-md-4 ">
        <label class='labelName'>Middle Name</label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus cool"  name="middleName"  error1="Middle Name" id="middleName"  placeholder="">                         
        <p id="middleNameError" class="text-danger fieldError"></p> 
    </div>
    <div class="col-md-4 ">
        <label class='labelName'>Last Name<span class="important">*</span></label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus cool"  name="lastName"  error1="Last Name"  id="lastName"  placeholder="">                         
        <p id="lastNameError" class="text-danger fieldError"></p> 
    </div>
    <center><button type="button" ></button></center>
    </form>

</div>

<input type="file" id="filename">
<input type="checkbox" name="skill" class="check" value="male"> Male
<input type="checkbox" name="skill" class="check" value="female"> Female
<input type="checkbox" name="skill" class="check" value="other"> Other

<div height=40%>
<iframe src="index.cfm" name="login" id='next' title="title" width=100% style='height:400px'></iframe>
</div>
<button id='next1'>next</button>
<script>
  $(document).ready(function(){
       $("#submitBtn").click(function(){
           alert( $('#filename').val())
       })
       $('.check').click(function() {
        $('.check').not(this).prop('checked', false);
        });
         $('#next1').click(function() {
            $('#next').attr('src','allCandidateDetails.cfm')
         });

  })
</script>
</body>
</html>