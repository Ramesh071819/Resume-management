<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>jQuery Print Array Values with Loop</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
       var selectValues = {
  "1":"",
  "2": "test 1",
  "3": "test 2"
};
var $mySelect = $('#mySelect');
//
$.each(selectValues, function(key, value) {
  var $option = $("<option/>", {
    value: value,
    text: value
  });
  $mySelect.append($option);
});
    });
</script>  
</head> 
<body> 
     <select 
     
     id="mySelect"></select> 
</body>
</html>