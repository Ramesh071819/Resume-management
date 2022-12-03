$(document).ready(function(){
    var instance = $.fn.deviceDetector;
        // console.log(instance.getInfo()) 
    $("#email").keyup(function() { 
        if($(this).val()==$(this).attr('rememberemail')){
            $("#password").val($(this).attr('rememberValue'))
        }
    });
    $("#signInBtn").click(function() { 
        var emailVal=$("#email").val();
        var regx=/^[a-z0-9](\.?[a-z0-9]){4,}@infoane\.com$/;
        var regxEmail=regx.test(emailVal); 
        if(regxEmail==false){
            $('#emailerror').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please enter correct email</i></span>'); 
            $("#email").css({"border": "1px solid red"}) ;   
        } 
        else{
        $('#emailerror').html('');      
        }
        var passwordVal=$("#password").val();
        var regpassword=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/
        var regularExpwd=regpassword.test(passwordVal)
        if(regularExpwd==false ){
            $('#pwderror').html('<i class="fa fa-warning" style="font-size:14px;color:red"></i> <span><i> Please enter correct password</span></i>').css({"font-weight": "900px"}) ; 
            $("#password").css({"border": "1px solid red"}) ;    
        }
        else{
        $('#pwderror').html('');
        $("#password").css({"border": "1px solid gray"}) ;
        }        
    // function code for browser name
        function browserName(){
            var instance = $.fn.deviceDetector;
            console.log(instance.getInfo().desktop) 
            var device_name;
            if(instance.getInfo().desktop == true){      
              device_name= 'desktop';
            }else if(instance.getInfo().ipad == true){       
                  device_name= 'ipad';
            }else if(instance.getInfo().mobile == true){           
              device_name= 'mobile';
            }else if(instance.getInfo().ieMobile == true){
                var  device_name= 'ieMobile';
            }else if(instance.getInfo().iphone == true){
              device_name= 'iphone';
            }
            else if(instance.getInfo().blackberry == true){
                 device_name= 'blackberry';
            }else{
                 device_name= 'Other';  
            }
            var browsing =instance.getInfo().browserName;
            // (instance.getInfo().browserVersion == 104) ? browsing = 'Edge' : browsing =instance.getInfo().browserName;
            $.ajax({
                url: '../resumeObject/addUser.cfc?method=browser',
                async: false,
                type: "get",
                data: {
                    emailId: $("#email").val(),
                    browsername:browsing,
                    Device_name:device_name
                },
                success: function (rawData) {   
                },
                error: function (xhr) {                   
                }
            });
        }       
        if(regularExpwd==true && regxEmail==true){
            $.ajax({
                url: '../resumeObject/addUser.cfc?method=getLoginDetails',
                async: false,
                type: "get",
                data: {
                    emailId: $("#email").val(),
                    Loginpassword :$("#password").val()
                },
                success: function (rawData) {           
                    if(rawData==1){                                   
                        // if ($('#remember').prop('checked')) {       
                        //     $.cookie('emailCookie', $("#email").val(), { expires: 2 });
                        //     $.cookie('passwordCookie', $("#password").val(), { expires: 2});
                        //     $.cookie('remember', true, { expires: 14 });
                        // }
                        // else{
                        //     $.cookie('emailCookie', null);
                        //     $.cookie('passwordCookie', null);
                        //     $.cookie('remember', null);
                        // }
                        // var remember = $.cookie('remember');
                        // if ( remember == 'true' ) {
                        
                        //     alert($.cookie('emailCookie'))
                        //     alert($.cookie('passwordCookie'))                       
                        //     $('#email').val($.cookie('emailCookie'));
                        //     $('#password').val($.cookie('passwordCookie'));       
                        // } 
                        $("#form").submit(); 
                        browserName()                                             
                    }
                    if(rawData==2){
                        $("#pwderror").html("Please enter registered password");
                        $("#emailerror").html("Please enter registered Email");                       
                    } 
                    if(rawData==3){
                    $("#form").attr('action','admin.cfm')
                    if( $("#form").attr('action')== 'admin.cfm'){
                        $("#form").submit();  
                    }

                    }                    
                },
                error: function (xhr) {                   
                }
            });
        }
    });
    // auto suggestion email from Data base added to email(only practice) 
    $("#email").keyup(function(){
        $.ajax({
            url: '../resumeObject/addUser.cfc?method=suggestVal',
            async: false,
            type: "get",
            data: {
            suggestData: $(this).val()                                                 
            },
            success: function (rawData) { 
                var result=JSON.parse(rawData);
                var dataFromDb = [];
                if(result.DATA.length > 0){
                    for(i=0;i <= result.DATA.length-1;i++){
                        dataFromDb.push(result.DATA[i])
                    } 
                }
                dataInString= dataFromDb.toString(dataFromDb)
                mydata=dataInString.split(",")
                $( "#email" ).autocomplete({
                    source: mydata
                });
            },
            error: function (xhr) {            
            }              
        });
    });    
    $('#email').focus(function(){
        $("#emailerror").html("");
        $("#email").css({"border": "1px solid gray"}) 
    });
    $('#password').focus(function(){
        $("#pwderror").html("");
        $("#password").css({"border": "1px solid gray"}) 
    });
});