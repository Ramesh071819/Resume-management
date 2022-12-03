<cfinclude  template="formatInclude.cfm">
<div class="row  reeee">
    <div class="col-md-4 ">
        <label class='labelName'>First Name<span class="important">*</span></label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly ss" error1="First Name"  name="firstName"   id="firstName"  placeholder="">                         
        <p id="firstNameError" class="text-danger fieldError"></p> 
    </div>
    <div class="col-md-4 ">
        <label class='labelName'>Middle Name</label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="middleName"  error1="Middle Name" id="firstName"  placeholder="">                         
        <p id="middleNameError" class="text-danger fieldError"></p> 
    </div>
    <div class="col-md-4 ">
        <label class='labelName'>Last Name<span class="important">*</span></label>
        <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="lastName"  error1="Last Name"  id="firstName"  placeholder="">                         
        <p id="lastNameError" class="text-danger fieldError"></p> 
    </div>
</div>
<script>
var demo=$('.reeee').html();
$('.ss').click(function(){
   
   var ccc= demo.replaceAll('firstName','fffffffffff')
 alert(ccc)
})

</script>