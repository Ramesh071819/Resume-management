<cfinclude  template="../resumeTemplate/formatInclude.cfm">
<div class="container mt-3">
  <h3>Modal Example</h3>
  <p>Click on the button to open the modal.</p>
  
  <button type="button" class="btn btn-primary" id='btn'>
    Open modal
  </button>
</div>

<!-- The Modal -->
<div class="modal" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>

      <!-- Modal body -->
      <div class="modal-body">
       
      </div>

      <!-- Modal footer -->
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>

    </div>
  </div>
</div>

<script>
$(document).ready(function(){
        $("#btn").click(function() { 
    //     let loadURL = '../resumeObject/addUser.cfc?method=suggestVal';
		// $.post(loadURL,{
    //   suggestData:'m'
    // },
    // function (data,status,error) {
		// 	$('.modal-body').html(data);
		// 	$("#myModal").show();
    //  console.log(data)

		// });
    
 $.ajax({
          url: '../resumeObject/addUser.cfc?method=suggestVal',
          async: false,
          type: "get",
          data: {
            suggestData:'m'
          },
         success: function (data,status,error) {
            $('.modal-body').html(data);
            $("#myModal").show();
          console.log(data)
          console.log(status)
          console.log(error)
         }
 });
})
});
</script>