<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>jQuery Print Array Values with Loop</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    $(document).ready(function(){
        var fruitsArray = [" ","ap", "ts", "mp", "up", "RSTN"];
        $.each(fruitsArray, function(index, value){
            console.log(value) 
            $("#state").append('<option value="'+value+'"  class="result" >'+value+'</option>');        
        });
       
    });
</script>  
</head> 
<body>
    <div></div>
     <select class="result" id='state' name="state"></select>  
</body>
</html>