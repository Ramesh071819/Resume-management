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
                margin-left: 22%;
                padding-bottom: 7%;
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
            #subBtn{
                margin-left: 14rem;
                padding-left: 4%;
                padding-right: 5%;
            }
        </style>
    </head>
    <body class="d-flex justify-content-center mt-4">
        <cfoutput>         
                <form   id="form2" action="../resumeAction/addUsersAction.cfm?resendEmail=1" method="post" >
                    <h3 class="text-secondary createpasswordSubTitle">Create New Password</h3>
                    <div>
                        <!---<div class="mb-3" >
                            <label for="exampleInputnumber1" class="form-label labelName"><b>Email ID: </b></label>
                            <input type="Email" class="form-control rounded"  name="Email" width="50%" readonly id="email" aria-describedby="numberHelp" placeholder=" Email ID">  
                            <div class="text-danger erroremail"></div>           
                        </div>--->
                        <div class="mb-3 ">
                            <label for="exampleInputnumber2" class="form-label labelName"><b>New Password: </b></label>
                            <input type="password" class="form-control newpassword rounded" id="newpassword" name="newpwd"  placeholder="Enter Password"> 
                            <div class="text-danger errorpwd"></div>              
                        </div>
                        <div class="mb-3 ">
                            <label for="exampleInputnumber2" class="form-label labelName"><b>Confirm Password: </b></label>
                            <input type="password" class="form-control cnfpassword rounded" id="cnfpassword" name="cnfpwd"  placeholder="Enter Password">  
                            <div class="text-danger errorConformPassword "></div>         
                        </div>     
                        <button type="button"  id="subBtn" class="btn btn-primary text-decoration:none mt-3"  resendEmail='#session.otpEmail#' name="resendEmail">Save</button>
                    </div>
                </form>
        </cfoutput>
        <script>
            $(document).ready(function(){  
                $('#email').focus(function(){
                    $(".erroremail").html("");
                    $("#email").css({"border": "1px solid gray"})
                });
                $('.newpassword').focus(function(){
                    $(".errorpwd").html("");
                    $(".newpassword").css({"border": "1px solid gray"})
                });
                    $('.cnfpassword').focus(function(){
                    $(".errorConformPassword").html("");
                    $(".cnfpassword").css({"border": "1px solid gray"})
                });
                $("#subBtn").click(function() {
                    var email=$('#email').val(); 
                    var forgotpwd=$("#newpassword").val();
                    var confpwd=$("#cnfpassword").val();                                                        
                    var regpassword=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                    var regularExconformpwd=regpassword.test(forgotpwd) 
                    if(forgotpwd=="" || regularExconformpwd==false){
                        $('.errorpwd').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <i>Enter Correct password</i>') ; 
                        $("#newpassword").css({"border": "1px solid red"})
                    } 
                    else{
                        $('.errorpwd').html('');
                        $("#newpassword").css({"border": "1px solid grey"})
                    }
                        var regpassword=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
                        var regularExpwd=regpassword.test(confpwd) 
                        if(confpwd=="" || regularExpwd==false ){
                        $('.errorConformPassword').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <i> Enter Correct password</i>') ; 
                        $("#cnfpassword").css({"border": "1px solid red"})
                    } 
                    else{
                        $('.errorConformPassword').html('');
                        $("#cnfpassword").css({"border": "1px solid grey"})
                    }   
                    if(confpwd != forgotpwd){
                        $('.errorConformPassword').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <i>Password Mismatch</i>') ;                      
                    }                             
                    if((!(confpwd.trim()=="" || regularExpwd==false )) && (!(forgotpwd.trim()=="" || regularExconformpwd==false)) && (forgotpwd===confpwd)){ 
                        $.ajax({
                            url: '../resumeObject/addUser.cfc?method=forgetpassword1',
                            async: false,
                            type: "get",
                            data: {
                                emailId: $(this).attr('resendEmail'),
                                Password:forgotpwd                   
                            },
                                success: function (rawData) {
                                if(rawData==1) {                         
                                    $('#form2').submit();
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
