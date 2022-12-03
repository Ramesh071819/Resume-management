
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>my form</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <link href="../resumeCssFiles/login.css" rel="stylesheet">
        <style>
            .createpasswordTitle{
                width: 24%;
            }
            .createpasswordSubTitle{
                margin-bottom: 36px;
                margin-left: 21%;
            }
            body{
                padding-top: 9%
            }
            #form2{
                border: 1px solid #F8F8F8;
                padding: 27px;
                width: 31%;
                background-color:#F8F8F8;
            }
        </style>
    </head>
    <body class="d-flex justify-content-center ">
        <cfoutput>        
            <form   id="form2" action="timer.cfm" method="post" class="createpasswordTitle">
                <h3 class="text-secondary createpasswordSubTitle">Create New Password</h3>
                <div>
                    <div class="mb-3 mb-2" >
                        <label for="exampleInputnumber1" class="form-label labelName"><b>Email ID: </b></label>
                        <input type="Email" class="form-control rounded"  name="ForgotEmail" width="50%"  id="email" aria-describedby="numberHelp" placeholder=" Email ID">  
                        <div class="text-danger erroremail"></div>           
                    </div>
                    <div class="mb-3 mb-4">
                        <label for="exampleInputnumber2" class="form-label labelName"><b>Mobile Number: </b></label>
                        <input type="text" class="form-control newpassword rounded onlyNum" maxlength="10" id="mobileNumber" name="Forgotmobile"  placeholder="Enter Mobile Number"> 
                        <div class="text-danger errorMobile"></div>              
                    </div>
                    <button type="button"  id="subBtn" class="btn btn-primary text-decoration:none " style="margin-left:14rem">Send OTP</button>
                </div>
            </form>
        </cfoutput>
        <script>
            $(document).ready(function(){
                // $("#resend").click(function() {
                //     var otpMail=$(this).attr('emailFromDB') 
                //     alert($(this).attr('emailFromDB'))
                //     location.href="\resumeManagement\resumeAction\addUsersAction.cfm?resndOtpMail="+otpMail+""
                //     $.ajax({
                //         url: '../resumeObject/addUser.cfc?method=',
                //         async: false,
                //         type: "get",
                //         data: {
                //             emailId: $(this).attr('emailFromDB'),
                //             Loginpasscode :Math.floor(100000 + Math.random() * 900000)
                //         },
                //         success: function (rawData) {
                //         }
                //        error: function (xhr) {                   
                //         }
                //     })
                 $(".onlyNum").keydown(function(e){
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
                $("#subBtn").click(function() { 
                    if( $("#mobileNumber").val() ==''){
                        $(".errorMobile").html("Please enter registered Number");
                    } 
                    if( $("#email").val() ==''){
                        $(".erroremail").html("Please enter registered Email")
                    }              
                    if( $("#mobileNumber").val() !='' &&  $("#email").val() != ''){                   
                        $.ajax({
                            url: '../resumeObject/addUser.cfc?method=forgotPasswordiframe',
                            async: false,
                            type: "get",
                            data: {
                                emailId: $("#email").val(),
                                mobileNumber :$("#mobileNumber").val()
                            },
                            success: function (rawData) {                                   
                                if(rawData==1){ 
                                    $.ajax({
                                        url: '../resumeObject/addUser.cfc?method=OTPemail',
                                        async: false,
                                        type: "get",
                                        data: {
                                            emailId: $("#email").val()
                                        },
                                        success: function (rawData) {                                   
                                            $("#form2").submit();  
                                        },
                                        error: function (xhr) {                   
                                        }
                                    });                                                                                                                                                 
                                }
                                if(rawData==2){
                                    $(".errorMobile").html("Please enter registered Number");
                                    $(".erroremail").html("Please enter registered Email");                       
                                }                  
                            },
                            error: function (xhr) {                   
                            }
                        });
                    }
                });
            }); 
        </script>
    </body>
</html> 