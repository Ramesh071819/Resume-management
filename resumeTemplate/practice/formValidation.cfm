<!DOCTYPE html>

<html>

<head>

  <meta charset="UTF-8">

    <title></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" /> 
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
</head>

<body >
 

 <h2 align="center" style="margin-top:1%"></h2>
    <form  id="form" action="\TestProject\Action\loginAction.cfm" method="post" style="margin-left:30%">
               <div class="m-3">
                  <label>FIRST NAME:</label>
                  <input type="text" id="fName" class="form-control w-50" name="fName" placeholder="First name" value="">
               </div>
               <div class="m-3">
                  <label>MIDDLE NAME:</label>
                  <input type="text" id="mName" class="form-control w-50" name="mName" placeholder="Middle name">
               </div>
               <div class="m-3">
                  <label>LAST NAME:</label>
                  <input type="text" id="lName" class="form-control w-50" name="lName" placeholder="Last name">
               </div>
               <div class="m-3">
                  <label>EMAIL ID:</label>
                  <input type="text" id="emailId" class="form-control w-50" name="email" placeholder="Email Id">
               </div>
               <div class="m-3">
                  <label>PASSWORD:</label>
                  <input type="password" id="pwd" class="form-control w-50" name="pwd" placeholder="Password">
               </div>
               <button class="btn btn-primary mt-4" id="submitBtn" type="submit" style="margin-left:22%">Submit</button>

    </form>
    </body>
    <script>
    $(function() {
        $('#submitBtn').click(function(){

     
    if($('#fName').val()==''){
      alert('empty')
    
    }
    else{
        return false;
    }
    if($('#mName').val()==''){
      alert('empty1')
     
    }
    else{
        return false;
    } 
    if ($('#fName').val()!='' && $('#mName').val()!='' ){
         
    } 
    });
       });
    </script>
    </html>