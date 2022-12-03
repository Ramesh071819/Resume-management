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
            .otpcardBody{ 
                margin-left: 26%;
                margin-top: 3%;
            }
            #resend{
                cursor: pointer;
            }
        </style>
    </head> 
    <body>
    <cfoutput>
        <div class="col-md-6  otpcardBody">
            <div class="d-flex justify-content-center align-items-center container">
                <div class="card py-5 px-3">
                    <h5 class="m-0">Email verification</h5>
                    <span class="mobile-text" >Enter the code we just send on your Email <b class="text-success">#session.otpEmail#</b></span>
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
                            <a class="text-decoration-none text-success " id="resend" otpEmail="#session.otpEmail#">Resend</a>
                        </div> 
                        <div class="col-md-3 ps-3"> 
                            <button class="btn btn-primary" id='nextBtn' >Verify OTP</button>
                        </div>
                        <div class=" col-md-2">
                            <div class=" border border-success text-center rounded-pill p-1" >
                                 <span id="countdown">
                                   <b><span id="countdown1">120</span></b><b style="font-size:12px;margin-left: 7%;">Seconds</b>     
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </cfoutput>
        <script>
        $(document).ready(function(){
            $('#nextBtn').click(function() {
                $.ajax({
                    url: '../resumeObject/addUser.cfc?method=getOTP',
                    async: false,
                    type: "get",
                    data: {
                        emailId: $("#resend").attr('otpEmail'),                   
                    },
                    success: function (rawData) {                                  
                        var result=JSON.parse(rawData) 
                        var passwordOtp = result.DATA[0]
                        
                        if(($('#otpPosition1').val()==passwordOtp[0][0])&& 
                            ($('#otpPosition2').val()==passwordOtp[0][1])&&
                            ($('#otpPosition3').val()==passwordOtp[0][2])&&
                            ($('#otpPosition4').val()==passwordOtp[0][3])&&
                            ($('#otpPosition5').val()==passwordOtp[0][4])&&
                            ($('#otpPosition6').val()==passwordOtp[0][5]))
                            {      
                            location.href="forgotpasswordIframe.cfm"              
                        }
                    else{
                        $('#errOtp').html('Please Enter Valid OTP')                      
                        }
                    },
                    error: function (xhr) {                   
                    }
                });
            });
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
             var counter = 120;
            interval =  setInterval(function ()
            {
                counter--;
                if (counter <= 0) {
                    clearInterval(interval);
                    $.ajax({
                        url: '../resumeObject/addUser.cfc?method=timeOut',
                        async: false,
                        type: "get",
                        data: {
                            emailId: $("#resend").attr('otpEmail'),                       
                        },
                        success: function (rawData) {                                   
                            $('#countdown').text('Time Out');  
                        },
                        error: function (xhr) {                   
                        }
                    });                       
                    return;
                } else {
                    $('#countdown1').text(counter);
                }
            },1000)
            $('#resend').click(function() {
                $.ajax({
                    url: '../resumeObject/addUser.cfc?method=OTPemail',
                    async: false,
                    type: "get",
                    data: {
                        emailId: $("#resend").attr('otpEmail'),                       
                    },
                    success: function (rawData) {
                    //   clearInterval(interval);                                                                              
                    },
                    error: function (xhr) {                   
                    }
                });
            })                        
           
        });  
        </script>
    </body>
</html>