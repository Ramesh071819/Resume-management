<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Geeks for Geeks</title>
    <style>
        .paragraphClass {
            font-size: 30px;
            color: red;
        }
  
        #Button {
            margin-top: 15px;
        }
    </style>
  
    <script>
        function myFunc() {
            var para = document.getElementById("p");
            para.classList.toggle("paragraphClass");
        }
    </script>
</head>
  
<body>
    <p id="p">
        Click on the button to toggle
        between the class to see the
        effects 
    </p>
  
    <button id="Button" onclick="myFunc()">
        Click Me
    </button>
</body>
  
</html>