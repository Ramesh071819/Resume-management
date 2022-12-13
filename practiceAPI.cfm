
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
   $(document).ready(function(){
//     $.ajax({
//         url: "https://api.weatherapi.com/v1/current.json",
//         type: "GET",
//         data:{
//          key:'c939afb4a0f14a6aabf123642220712',
//          q:'vijayawada'
//         },
//         success: function(result){
//             console.log(result)
//         }
//     })
// $.ajax({
//         url: "https://imdb8.p.rapidapi.com/auto-complete",
//         type: "GET",
//         data:{
//          q:'game of thr'
//         },
//          headers: {
//             "X-RapidAPI-Key": "a9d963f1f2mshd2a7af6bbfa8b2fp17c9c2jsn4d7083cbb772",
//             "X-RapidAPI-Host":"imdb8.p.rapidapi.com"
//             },
//         success: function(result){
//             console.log(result)
//         }
//     })
//  })
// let file = "https://api.weatherapi.com/v1/current.json?key=c939afb4a0f14a6aabf123642220712&q=vijayawada"
// fetch (file)
//   .then(res => alert(res))

</script>
</head>
<body>
 <!--- <cfhttp method = 'get' result='weather' url="https://api.weatherapi.com/v1/current.json"> 
   <cfhttpparam  type="header" name='key' value='c939afb4a0f14a6aabf123642220712'> 
   <cfhttpparam  type="URL" name='key' value='c939afb4a0f14a6aabf123642220712'>
   <cfhttpparam  type="URL" name='q' value='vijayawada'>
</cfhttp>
   
   <cfset weatherData = deserializeJSON(weather.Filecontent)>
   <cfdump  var="#weatherData#">
   <cfdump  var="#weatherData.location.name#">--->
   <!--- api for movies --->
<cfhttp method = 'get' result='movie' url="https://imdb8.p.rapidapi.com/auto-complete">  
   <cfhttpparam  type="header" name='X-RapidAPI-Key' value='a9d963f1f2mshd2a7af6bbfa8b2fp17c9c2jsn4d7083cbb772'> 
   <cfhttpparam  type="header" name='X-RapidAPI-Host' value='imdb8.p.rapidapi.com'> 
   <cfhttpparam  type="URL" name='q' value='game of thr'>
</cfhttp>
  <cfdump  var="#movie#"> 
  <cfdump  var="#DeserializeJSON(movie.Filecontent)#"> 

</body>
</html>

