
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
   $(document).ready(function(){
    var apidata =$('#apidata').attr('apidata')
        $('#apidata').append(apidata)
        $('#redirect-action-container').remove()
   }) 
</script>
</head>
<body>

<cfhttp method = 'get' result='youtube' url="https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbU1EdkViWHdJY3Z0ejlzNkhzN3JaelRkWWxWd3xBQ3Jtc0trZ1dkQlp1Vm92RENudGNjTVFpSVh5UmFFVGNZbUhZVUptbkhrRi1XNFhEZFJXU0xDRW9iYXZPWlhHUnRNd2Zfa0dvei00Tko3WGdoZTRTX0xvZ016akVDbXItMFdmYngtdmtzNlNqLW1sbVNJQlZwdw&q=https%3A%2F%2Fdryicons.com%2Ficon%2Fmultiple-files-icon-6244&v=CLG0ha_a0q8">
</cfhttp>

<cfoutput>

<div id='apidata'  apidata="#youtube.Filecontent#"></div>
</cfoutput>


</body>
</html>

