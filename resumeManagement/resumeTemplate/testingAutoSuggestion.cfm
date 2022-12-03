
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" 
          content="IE=edge">
    <meta name="viewport" 
          content="width=device-width, 
                   initial-scale=1.0">
    <title>Jquery Autocomplete</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js">
    </script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js">
    </script>
</head>
<div class='suggest'> 
    <input type="text" class="form-control" placeholder='auto suggestion' id='autosuggest'>
</div>
<script>
     $(document).ready( function () { 
        $("#autosuggest").keydown(function(){
        $.ajax({
            url: '../resumeObject/addUser.cfc?method=suggestVal',
            async: false,
            type: "get",
            data: {
            suggestData: $(this).val()                                                 
            },
            success: function (rawData) { 
            var result=JSON.parse(rawData);
            var arr=[];
            alert(result.DATA.length)
            if(result.DATA.length < 0){
                // for(i=0;i=result.DATA.length-1;i++){
                //     console.log(result.DATA[i])
                // }
            }
            console.log(arr)
           
            // let i = result.DATA.length-1; 
            // if(result.DATA.length > 0){
            //     while(i > 0){
            //         arr.push(result.DATA[i])
            //         i--;
            //     }
            // }    
            },
            error: function (xhr) {            
            }              
        });
        })
    })
</script>
<!---<!DOCTYPE html> 
<html lang="en">
<script src="https://code.jquery.com/jquery-1.12.4.js">
    </script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js">
    </script>  
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" 
          content="IE=edge">
    <meta name="viewport" 
          content="width=device-width, 
                   initial-scale=1.0">
    <title>Jquery Autocomplete</title>
    
</head>
  
<body>
    <input type="text" 
           id="auto" 
           placeholder="enter something" />
<script>

$(document).ready(function() {
	// array of items.
	var items = [
		"C++",
		"Java",
		"Python",
		"C#",
		"DSA",
		"STL",
		"Self Placed",
		"Android",
		"Kotlin",
		"GeeksforGeeks",
		"GFG",
	];
	// jQuery inbuild function
	$("#auto").autocomplete({
		source: items // list of items.
	});
})
</script>
</body>
  
</html>--->