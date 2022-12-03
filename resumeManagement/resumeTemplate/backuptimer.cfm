
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
    </head>
    <body class="d-flex justify-content-center mt-4">
        <cfoutput>
            <cfif isDefined('URL.passcode')>
                <div class="col-md-6 justify-content-center">
                    <div class="d-flex justify-content-center align-items-center container">
                        <div class="card py-5 px-3">
                            <h5 class="m-0">Email verification</h5>
                            <span class="mobile-text" >Enter the code we just send on your Email <b class="text-success">#URL.OtpEmail#</b></span>
                            <div class="d-flex flex-row justify-content-center mt-5">
                                <div class="col-md-1 me-2">
                                    <input type="text" class=" onlyNum form-control numOnly" id="otpPosition1" autofocus="" maxlength='1'>
                                </div>
                                <div class="col-md-1 me-2">
                                    <input type="text" class="onlyNum form-control numOnly" id="otpPosition2" maxlength='1'>
                                </div>
                                <div class="col-md-1 me-2">
                                    <input type="text" class="onlyNum form-control numOnly" id="otpPosition3" maxlength='1'>
                                </div>
                                <div class="col-md-1 me-2">
                                    <input type="text" class="onlyNum form-control numOnly" id="otpPosition4" maxlength='1'>
                                </div>
                                <div class="col-md-1 me-2">
                                    <input type="text" class="onlyNum form-control numOnly" id="otpPosition5" maxlength='1'>
                                </div>
                                <div class="col-md-1 me-2">
                                    <input type="text" class="onlyNum form-control numOnly" id="otpPosition6" maxlength='1'>
                                </div>
                            </div>
                            <center>
                                <div class="col-md-6 justify-content-center text-danger mt-2" id="errOtp">
                                </div>
                            </center>
                            <div class=" mt-5 row">
                                <div class="col-md-1"></div>
                                <div class="d-block mobile-text col-md-4 mt-2">Don't receive the code?
                                    <a class="text-decoration-none text-success"id="resend">Resend</a>
                                </div> 
                                <div class="col-md-3 ps-5"> 
                                    <button class="btn btn-primary " id='nextBtn' passcodeFromDb=#URL.passcode# resendEmail=#URL.OtpEmail#>Next</button>
                                </div>
                                <div class=" col-md-1">
                                    <div class="countdown border border-success text-center rounded-pill p-1"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <cfelse>
                <form   id="form2" action="../resumeAction/addUsersAction.cfm" method="post" >
                    <h3 class="text-secondary">Create New Password</h3>
                    <div>
                        <div class="mb-3" >
                            <label for="exampleInputnumber1" class="form-label labelName"><b>Email ID: </b></label>
                            <input type="Email" class="form-control rounded"  name="ForgotEmail" width="50%"  id="email" aria-describedby="numberHelp" placeholder=" Email ID">  
                            <div class="text-danger erroremail"></div>           
                        </div>
                        <div class="mb-3 ">
                            <label for="exampleInputnumber2" class="form-label labelName"><b>Mobile Number: </b></label>
                            <input type="text" class="form-control newpassword rounded onlyNum" maxlength="10" id="mobileNumber" name="Forgotmobile"  placeholder="Enter Mobile Number"> 
                            <div class="text-danger errorMobile"></div>              
                        </div>
                        <button type="button"  id="subBtn" class="btn btn-primary text-decoration:none " style="margin-left:7rem">Next</button>
                    </div>
                </form>
            </cfif>
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
                // })
                $("#nextBtn").click(function() {            
                var passwordOtp=$(this).attr('passcodeFromDb')
                if(($('#otpPosition1').val()==passwordOtp.substr(0, 1))&& 
                        ($('#otpPosition2').val()==passwordOtp.substr(1, 1))&&
                        ($('#otpPosition3').val()==passwordOtp.substr(2, 1))&&
                        ($('#otpPosition4').val()==passwordOtp.substr(3, 1))&&
                        ($('#otpPosition5').val()==passwordOtp.substr(4, 1))&&
                        ($('#otpPosition6').val()==passwordOtp.substr(5, 1))){
                    var resendEmail= $(this).attr('resendEmail')
                        location.href="forgotpasswordIframe.cfm?resendEmail="+resendEmail+""
                }
                else{
                    $('#errOtp').html('Please Enter Valid OTP')
                }
                })
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
                                    $("#form2").submit();                                              
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
                var timer2 = "2:00";
                var interval = setInterval(function() {
                var timer = timer2.split(':');
                //by parsing integer, I avoid all extra string processing
                var minutes = parseInt(timer[0], 10);
                var seconds = parseInt(timer[1], 10);
                --seconds;
                minutes = (seconds < 0) ? --minutes : minutes;
                if (minutes < 0) clearInterval(interval);
                seconds = (seconds < 0) ? 59 : seconds;
                seconds = (seconds < 10) ? '0' + seconds : seconds;
                //minutes = (minutes < 10) ?  minutes : minutes;
                $('.countdown').html(minutes + ':' + seconds);
                timer2 = minutes + ':' + seconds;
                }, 1000);
            }); 
        </script>
    </body>
</html> 