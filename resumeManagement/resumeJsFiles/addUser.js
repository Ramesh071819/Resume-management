$(document).ready(function(){
    var StateArray = [" ","Andhra Pradesh","Assam","Madhya Pradesh","Andaman and Nicobar","Arunachal Pradesh","Bihar","Chandigarh","Chhattisgarh","Dadar and Nagar","Daman and Diu","Delhi","Lakshadweep","Goa","Gujarat","Haryana","Himachal Pradesh","Jammu and Kashmir","Jharkhand","Karnataka","Kerala","Madhya Pradesh","Maharashtra","Manipur","Meghalaya","Mizoram"];
    $.each(StateArray, function(index, value){
        $(".allStates").append('<option value="'+value+'"  class="result" >'+value+'</option>');        
    });
    $('#firstName,#middleName,#lastName,#nationality').keydown(function (e) {
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
    $(".numOnly").keydown(function(e)
    {
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
    $("#submitBtn").click(function() {  
        $(".visitors_name").each(function(){   
            var dynamicName =$(this).attr('name')
            var errorName =$(this).attr('error1')
            if($(this).val()==''){      
            $('#'+dynamicName).css({"border": "1px solid red"}) ; 
            $('#'+dynamicName+'Error').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please enter '+errorName+'</i></span>');
            }
            else{
                $('#'+dynamicName+'Error').html('');   
            }
        }); 
         
         var emailVal=$("#email").val();
         var firstnameVal=$("#firstName").val();
         var middlenameVal=$('#middleName').val();
         var lastnameVal=$('#lastName').val();
         var mobileVal=$('#mobile').val();
         var altMobileVal=$('#altMobileNum').val();
         var genderVal=$('#selectGender').val();
         var experianceVal=$('#workExperience').val();
         var nationalityVal=$('#nationality').val();
         var noticePeriodVal=$('#noticePeriod').val();
         var currentEmployerVal=$('#currentEmployer').val();     
         var ctcVal=$('#ctc').val(); 
         var expectedCtcVal=$('#expectedCtc').val();         
         var addressLine1Val=$('#addressLine1').val();
         var addressLine2Val=$('#addressLine2').val();
         var zipcodeVal=$('#zipcode').val();         
         var cityVal=$('#city').val();
         var phoneVal=$('#phone').val();
         var permanentAddressLine1Val=$('#permanentAddressLine1').val();
         var permanentAddressLine2Val=$('#permanentAddressLine2').val();
         var permanentZipcodeVal=$('#permanentZipcode').val();
         var permanentStateVal=$('#permanentState').val();
         var permanentCityVal=$('#permanentCity').val();
         var permanentPhoneVal=$('#permanentPhone').val();
         var dob=$("#dob").val();
         var regx=/^[a-z0-9](\.?[a-z0-9]){4,}@infoane\.com$/;          
         var regxEmail=regx.test(emailVal);
        if(regxEmail==false){
            $('#emailError').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i style="font-size:13px;"> Please  enter correct Email</i></span>') ; 
            $("#email").css({"border": "1px solid red"}) ;             
        } 
        else{
           $('#emailError').html('');
           $("#emailId").css({"border": "1px solid grey"}) ;           
        }               
        if($('#skillSet').val()==''){      
            $("#skillSetError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please select Skills</i></span>');
            $(".select2-selection").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#skillSetError").html("");
            $(".select2-selection").css({"border": "1px solid grey"}) ; 
        }               
         var PhoneRegx=/^[7896]\d{9}$/
         var regxMobileVal=PhoneRegx.test(mobileVal)
        if(regxMobileVal== false){
            $("#mobileError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i style="font-size:11px;"> Please  enter Correct Number</i></span>');
            $("#mobile").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#mobileError").html("");
            $("#mobile").css({"border": "1px solid grey"}) ; 
        }
        //  var altNumber=$('#altMobileNum').val();
        //  var altMobileVal=PhoneRegx.test(altNumber)
        //  if (altMobileVal== false)
        //  {
        //      $('#altMobileNumError').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i style="font-size:12px;"> Please  enter Correct Number</i></span>');
        //      $('#altMobileNum').css({"border": "1px solid red"}) ; 
        // }
        //  else{
        //     $('#altMobileNumError').html('');
        //     $('#altMobileNum').css({"border": "1px solid red"}) ; 
        //  }      
         var regxZipcode=/^[1-9][0-9]{5}$/
         var regxZipcodeVal=regxZipcode.test(zipcodeVal)
        if(regxZipcodeVal==false){
            $("#zipcodeError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please  enter Correct Zipcode</i></span>');
            $("#zipcode").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#zipcodeError").html("");
            $("#zipcode").css({"border": "1px solid grey"}) ; 
        }
        var PhoneRegx=/^[7896]\d{9}$/
        var regxAddressPhoneVal=PhoneRegx.test(phoneVal)
        if(regxAddressPhoneVal== false){
            $("#phoneError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please  enter Correct Number</i></span>');
            $("#phone").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#phoneError").html("");
            $("#phone").css({"border": "1px solid grey"}) ; 
        }
     //    permanent address
        var regxZipcode=/^[1-9][0-9]{5}$/
        var regxPermanentZipcodeVal=regxZipcode.test(permanentZipcodeVal)
        if(regxPermanentZipcodeVal== false){
            $("#permanentZipcodeError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please  enter Correct Zipcode</i></span>');
            $("#permanentZipcode").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#permanentZipcodeError").html("");
            $("#permanentZipcode").css({"border": "1px solid grey"}) ; 
        }
        var PhoneRegx=/^[7896]\d{9}$/
        var regxPermanentPhoneVal=PhoneRegx.test(permanentPhoneVal)
        if(regxPermanentPhoneVal== false){
            $("#permanentPhoneError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please  enter correct Number</i></span>');
            $("#permanentPhone").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#permanentPhoneError").html("");
            $("#permanentPhone").css({"border": "1px solid grey"}) ; 
        }    
        if($('#permanentAddressLine1').val()==''){
          $("#permanentAddressLine1Error").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please enter Address</i></span>');
          $("#permanentAddressLine1").css({"border": "1px solid red"}) ;   
        }
        else{
          $("#permanentAddressLine1Error").html("");
          $("#permanentAddressLine1").css({"border": "1px solid grey"}) ; 
        }
        if($('#permanentCity').val()==''){
          $("#permanentCityError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please enter City</i></span>');
          $("#permanentCity").css({"border": "1px solid red"}) ;   
        }
        else{
          $("#permanentCityError").html("");
          $("#permanentCity").css({"border": "1px solid grey"}) ; 
        }
        if($('#permanentState').val()==' '){
            $("#permanentStateError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please select State</i></span>');
            $("#permanentState").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#permanentStateError").html("");
            $("#permanentState").css({"border": "1px solid grey"}) ; 
        }
        if($('#state').val()==' '){
            $("#stateError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please select State</i></span>');
            $("#state").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#stateError").html("");
            $("#state").css({"border": "1px solid grey"}) ; 
        }
        if($('#department').val()==''){
            $("#departmentError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please select Department</i></span>');
            $("#department").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#departmentError").html("");
            $("#department").css({"border": "1px solid grey"}) ; 
        }
        if($('#selectDegree').val()==''){
            $("#selectDegreeError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please select Degree</i></span>');
            $("#selectDegree").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#selectDegreeError").html("");
            $("#selectDegree").css({"border": "1px solid grey"}) ; 
        }
        if($('#selectGender').val()==''){
            $("#selectGenderError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i><span><i> Please select Gender</i></span>');
            $("#selectGender").css({"border": "1px solid red"}) ;   
        }
        else{
            $("#selectGenderError").html("");
            $("#selectGender").css({"border": "1px solid grey"}) ; 
        }
        // condition for submitBtn
        var selectGenderVal1=$('#selectGender').val()!=='';
        var skillsetVal=$('#skillSet').val()!=='';
        var stateVal=$('#state').val()!==' ';
        var permanentStateValue=$('#permanentState').val()!==' ';
        var graduateVal=$('#selectDegree').val()!=='';
        var departmentVal=$('#department').val()!=='';
        if((firstnameVal.trim()!='') && (lastnameVal.trim()!='') && (regxEmail==true) && (regxMobileVal== true) && (dob.trim()!='') && (selectGenderVal1) && (graduateVal) && (experianceVal.trim()!='') && (nationalityVal.trim()!='') && (noticePeriodVal.trim()!='')
        && (currentEmployerVal.trim()!='') && (ctcVal.trim()!='') && (expectedCtcVal.trim()!='') && (departmentVal) && (skillsetVal) && (addressLine1Val.trim()!='') && (regxPermanentZipcodeVal== true) && stateVal && (cityVal.trim()!='') &&
        (regxAddressPhoneVal== true) && (permanentAddressLine1Val.trim()!='') && (regxZipcodeVal==true) && (permanentStateValue) && (permanentCityVal.trim()!='') && (regxPermanentPhoneVal== true))
        {
            // $("#form").submit();
            //$("#form").serialize();
            //$("#form :input").serialize(),
            // Skills:$('.select2-selection__choice').attr('title'),
            //Skills:$('. select2-selection__choice__display').text()
            // $('.select2-selection__rendered li').each(function()
            // {
            //    $(this).attr('title'); 
            // });,
            var skillVal=$('#skillSet').val();
            var graduateVal=$('#selectDegree').val()
            $.ajax({
              url: '../resumeObject/addUser.cfc?method=candidateDetails',
              async: false,
              type: "get",
              data: 
                {               
                    fname:firstnameVal,
                    mname:middlenameVal,
                    lname:lastnameVal,
                    email:emailVal,
                    mobileNumber:mobileVal,
                    altNumber:altMobileVal,
                    dateOfBirth:dob,
                    gender:genderVal,
                    highestDegree:$('#selectDegree').val(),
                    experience:experianceVal,
                    nationality:nationalityVal,
                    noticePeriod:noticePeriodVal,
                    previousCompany:currentEmployerVal,
                    currentCtc:ctcVal,
                    expectedCtc:expectedCtcVal,
                    department:$('#department').val(),
                    Skills:skillVal.toString(),
                    presentAddress1:addressLine1Val,
                    presentAddress2:addressLine2Val,
                    presentZipcode:zipcodeVal,
                    presentState: $('#state').val(),
                    presentCity:cityVal,
                    presentNumber:phoneVal,
                    permanentAddress1:permanentAddressLine1Val,
                    permanentAddress2:permanentAddressLine2Val,
                    permanentZipcode:permanentZipcodeVal,
                    permanentState:permanentStateVal,
                    permanentCity:permanentCityVal,
                    permanentPhoneNumber:permanentPhoneVal           
                },
               success: function(rawData){ 
                    if(rawData==1) {                  
                        console.log(rawData)
                        $("#form1").submit();
                    }
                    else{
                        $("#myModal").show();
                    }    
                },
                error: function (xhr) {                     
                }
            });                                 
        }
    });
    $(".fieldFocus").focus(function() {
      $(this).siblings('.fieldError').html('');
      $(this).css({ "border": "1px solid grey" })     
    });   
    // pending in plugin
    $('#skillLabel').click(function(){
      $("#skillSetError").html("");
      $(".select2-selection").css({"border": "1px solid gray"})
      // $("#labelFname").removeClass('labelName');
    });   
    $("#box").click(function(){                                   
        if(this.checked){                  
            $("#permanentAddressLine1").val($("#addressLine1").val());
            $("#permanentAddressLine2").val($("#addressLine2").val());
            $("#permanentZipcode").val($("#zipcode").val());
            $("#permanentCity").val($("#city").val());
            $("#permanentPhone").val($("#phone").val());
            $("#permanentState").val($("#state").val());
        }
        if(this.checked){                  
            $("#permanentAddressLine1").val($("#addressLine1").val());
        }
        else{
                $("#permanentAddressLine1").val('');
        }
        if(this.checked){                  
            $("#permanentAddressLine2").val($("#addressLine2").val());
        }
        else{
                $("#permanentAddressLine2").val('');
        }
        if(this.checked){                  
            $("#permanentZipcode").val($("#zipcode").val());
        }
        else{
                $("#permanentZipcode").val('');
        }
        if(this.checked){                  
            $("#permanentCity").val($("#city").val());
        }
        else{
                $("#permanentCity").val('');
        }
        if(this.checked){                  
            $("#permanentPhone").val($("#phone").val());
        }
        else{
                $("#permanentPhone").val('');
        }
        if(this.checked){                  
            $("#permanentState").val($("#state").val());
        }
        else{
                $("#permanentState").val('');
        }
    });
    $('.deleteDocument').click(function(){
        $('#file_input').val('')
    })
        //  $( "#dob" ).datepicker({maxDate:0});
    $('#dob').datepicker({
        dateFormat:'dd-mm-yy',
        changeMonth:true,
        changeYear:true
    });
    //    multiselect
    $(".skillSet").select2();
    // for modal
    $("#modelclosebtn,#modalHide").click(function() {
        $("#myModal").hide();
    });
   $('#file_input').multifile();
});

// $(document).ready(function(){
//       $(".dynamicRegx").each(function(){ 
//         var dynamicName2 =$(this).attr('name')
//         alert(dynamicName2)
//         if(dynamicName2=='email'){
//           var emailVal=$("#email").val();
//           var regx=/^[a-z0-9](\.?[a-z0-9]){4,}@infoane\.com$/;
//           var regxEmail=regx.test(emailVal);
//           if(regxEmail==false){
//             $('#emailError').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i style="font-size:13px;"> Please  enter correct Email</i></span>') ; 
//             $("#email").css({"border": "1px solid red"}) ;             
//           } 
//           else{
//             $('#emailError').html('');
//             $("#emailId").css({"border": "1px solid grey"}) ;           
//           } 
//         }
//         else if(dynamicName2=='mobile'){
//           mobileVal=$('#mobile').val();
//           var PhoneRegx=/^[7896]\d{9}$/
//           var regxMobileVal=PhoneRegx.test(mobileVal)
//             if(regxMobileVal== false){
//               $("#mobileError").html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i style="font-size:11px;"> Please  enter Correct Number</i></span>');
//               $("#mobile").css({"border": "1px solid red"}) ;   
//             }
//             else{
//               $("#mobileError").html("");
//               $("#mobile").css({"border": "1px solid grey"}) ; 
//             }

//         }
//       })  
//     });
//   });



