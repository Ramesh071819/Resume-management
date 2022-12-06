<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Autocomplete - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script>

$( function() {
    $("#tags").keyup(function(){
        $.ajax({
            url: '../resumeObject/addUser.cfc?method=suggestVal',
            async: false,
            type: "get",
            data: {
            suggestData: $(this).val()                                                 
            },
            success: function (rawData) { 
                var result=JSON.parse(rawData);
                var arr = [];
                if(result.DATA.length > 0){
                    for(i=0;i <= result.DATA.length-1;i++){
                        arr.push(result.DATA[i])
                    } 
                }
                   stree= arr.toString(arr)
                    mydata=stree.split(",")
                    $( "#tags" ).autocomplete({
                        source: mydata
                    });

            },
            error: function (xhr) {            
            }              
        });
    });    
    // var availableTags = [
    //   "ActionScript",
    //   "AppleScript",
    //   "Asp",
    //   "BASIC",
    //   "C",
    //   "C++",
    //   "Clojure",
    //   "COBOL",
    //   "ColdFusion",
    //   "Erlang",
    //   "Fortran",
    //   "Groovy",
    //   "Haskell",
    //   "Java",
    //   "JavaScript",
    //   "Lisp",
    //   "Perl",
    //   "PHP",
    //   "Python",
    //   "Ruby",
    //   "Scala",
    //   "Scheme"
    // ];
    // $( "#tags" ).autocomplete({
    //   source: availableTags
    // });
} );
  
  </script>
</head>
<body>
 
<div class="ui-widget">
  <label for="tags">Tags: </label>
  <input id="tags">
</div>
 
 
</body>
</html>
 <!---if(result.DATA.length > 0){
              for(i=0;i=result.DATA.length-1;i++){
                 arr.push(result.DATA[i])
              }        
            }--->



    <!---replace--->
  