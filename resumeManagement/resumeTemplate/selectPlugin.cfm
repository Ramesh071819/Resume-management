<!DOCTYPE html>
<html lang="en">                                                                                                                                                                        
<head>
  <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <!-- cdn for multiselect
  <link rel="stylesheet" href="/path/to/css/amsify.select.css" />
<script src="/path/to/cdn/jquery.slim.min.js"></script>
<script src="/path/to/js/jquery.amsifyselect.js"></script>-->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="jquery.multifile.js"></script>
</head>
<body>
<input id="file_input" type="file" name="files[]">
 <!--<select name="country" multiple searchable>
  <option value="">Select Country</option>
  <optgroup label="Asia">
    <option value="1">India</option>
    <option value="2">Afghanistan</option>
    <option value="3">Bangladesh</option>
    <option value="4">Nepal</option>
    <option value="5">Sri Lanka</option>
  </optgroup>
  <optgroup label="America">
    <option value="6">USA</option>
    <option value="7">Canada</option>
    <option value="8">West Indies</option>
    <option value="9">Chile</option>
    <option value="10">Argentina</option>
  </optgroup>
  <optgroup label="Africa">
    <option value="11">South Africa</option>
    <option value="12">Nigeria</option>
    <option value="13">Algeria</option>
    <option value="14">Somalia</option>
    <option value="15">Sudan</option>
  </optgroup>
</select>
<script>
$('select').amsifySelect({
  type : 'amsify'
});
</script>-->
<script type="text/javascript">
$(document).ready(function()
    {
      $('#file_input').multifile();
});

</script>
</body>
</html>
