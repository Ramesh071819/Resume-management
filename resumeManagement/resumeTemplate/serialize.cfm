<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
  $("button").click(function(){
var allFormdata=$("form").serialize().split('&')
console.log(allFormdata)
    $("div").text(Array.isArray(allFormdata));
    alert(typeof $("form").serialize().split('&'))
 

  });
//   deserialize concepts
  function deserializeMyform(ident) {
    var form_data = ident.serialize().split('&');
    var form_data1     = {};

    $.each(form_data, function(key, value) {
        var data = value.split('=');
        input[data[0]] = decodeURIComponent(data[1]);
    });

    return input;
}
});
</script>
</head>
<body>

<form action="">
  First name: <input type="text" name="FirstName" value="Mickey"><br>
  First name: <input type="text" name="FirstName" value="Mickey"><br>
  First name: <input type="text" name="FirstName" value="Mickey"><br>
  First name: <input type="text" name="FirstName" value="Mickey"><br>
  Last name: <input type="text" name="LastName" value="Mouse"><br>
  Last name: <input type="text" name="LastName" value="Mouse"><br>
  Last name: <input type="text" name="LastName" value="Mouse"><br>
  Last name: <input type="text" name="LastName" value="Mouse"><br>
</form>

<button>Serialize form values</button>

<div></div>

</body>
</html>
