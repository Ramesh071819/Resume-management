
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

  </head>
  <body>

    <div id="ajaxdata">  
    </div>
    <script>
    $('#ajaxdata').dataTable( {
        "ajax": {
            "url": "../resumeObject/addUser.cfc?method=datatable",
            "type": "POST"
        }
    } );
    </script>
  </body>
</html>