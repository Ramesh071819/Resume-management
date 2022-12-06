
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <!---<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>

   <script src="js.device.detector-master/js.device.detector-master/dist/jquery.device.detector.js"></script>--->

  </head>
  <body>

    <div ID="browser">  
    </div>
    <script>
    var instance = $.fn.deviceDetector;
    alert(instance.getInfo())
    console.log(instance.getInfo())
        // let iphoneSE = window.matchMedia("only screen and (max-width: 667px) and (min-width: 375px)").matches;
        // let iphoneXR = window.matchMedia("only screen and (max-width: 896px) and (min-width: 414px)").matches;
        // let iphone12pro = window.matchMedia("only screen and (max-width: 844px) and (min-width: 390px)").matches;
        // let ipad  = window.matchMedia("only screen and (max-width: 1024px) and (mix-width: 768px)").matches;
        // let  screenInch19= window.matchMedia("only screen and (max-width: 1366px)").matches;
        // let screenInch21= window.matchMedia("only screen and (max-width: 1920px)").matches;
        // (screenInch21) ?  alert( "21 inch screen") : '';
        // (iphoneSE) ?  alert( "iphoneSE") : '';
        // (ipad) ?  alert( "ipad") : '';
        // (iphone12pro) ?  alert( "iphone12pro") : '';
        // (screenInch19) ?  alert( "19 inch screen") : '';
        // (iphoneXR) ?  alert( "iphoneXR") : '';
        //  let userAgent = navigator.userAgent;
        //  var browserName;
        // if(userAgent.match(/edg/i)){
        //     document.getElementById("browser").innerHTML ="Browser Edge";
        //     var browserName = 'Edge';

        // }else if(userAgent.match(/firefox|fxios/i)){
        //     document.getElementById("browser").innerHTML ="Browser firefox";
        //      var browserName = 'firefox' ;
        // }else if(userAgent.match(/opr\//i)){
        //     document.getElementById("browser").innerHTML ="opera";
        //     var browserName = 'opera' ;
        // }else if(userAgent.match(/chrome|chromium|crios/i)){
        //     document.getElementById("browser").innerHTML ="Browser chrome";
        //     var browserName = 'chrome' ;
        // }else if(userAgent.match(/safari/i)){
        //     document.getElementById("browser").innerHTML ="Browser safari";
        //     var browserName = 'safari' ;
        // }else{
        //      var browserName = 'Other' ;
        //     alert("Other browser");
        // }
        // console.log(browserName)

        //        
    </script>
  </body>
</html>