<html> 
<head> 
<title>Products - Error</title> 
</head> 
<body> 
<h2>Sorry</h2> 
<p>An error occurred when you requested this page.</p> 
<p>Please send e-mail with the following information to #error.mailTo# to report 
this error.</p> 
<table border=1> 
<tr><td><b>Error Information</b> <br> 
Date and time: #error.DateTime# <br> 
Page: #error.template# <br> 
Remote Address: #error.remoteAddress# <br> 
HTTP Referer: #error.HTTPReferer#<br> 
</td></tr></table> 
<p>we are finding an error in sam function</p> 
</body> 
</html>
<cfdump var = #now()#>
<cfoutput>
  <cfdump var="#dateformat(Now(), "ddd dd mmmm, yyyy")#">
  <cfdump var="#dateformat(Now(), "ddd dd mmmm, yyyy")#">
  <cfdump var="#dateformat(Now(), "ddd dd mmmm, yyyy")#">
</cfoutput>

<script>
const arry=[1,2,3,4,5,6,8]
$.each(arry,function(){
    console.log(arry)
})

var newItems = $.map(function(i){
 return i + 1;
 console.log(return)
})
 async function doAjax(url, params, method) {
    return $.ajax( {
      url: url,
      type: method || 'POST',
      dataType: 'json',
      data: params
    });
}
// newItems is [2,3,4,5] code for error in 
</script>