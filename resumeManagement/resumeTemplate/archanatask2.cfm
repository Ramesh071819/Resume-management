<cfinclude  template="../resumeTemplate/formatInclude.cfm">
<div class="container-fluid">
    <div class="staticField">
        <div class="row mt-5 empty">      
            <div class="col-md-2 ">
                <select class="form-select  fieldBorder  " id="select1_1" name=''>
                    <option value="" default selected></option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Others">Other</option>
                </select>
            </div>
            <div class="col-md-2 ">
                <select class="form-select   fieldBorder  " id="select2_1" name=''>
                    <option value="" default selected></option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Others">Other</option>
            </select>
            </div>    
            <div class="col-md-1">
                <button  class='btn border-success rounded-circle addnewRow'> <i class="fa fa-plus fa-1x text-success" ></i> </button>
            </div>
        </div>
    </div>
    <div class="row mt-2" id="newRow">
    <div>
<div>
<script>
    // add row
    var row_id=2;
    const dynamicfield=$('.staticField').html() //total appending field html 
    $(document).on('click','.addnewRow',function () {              
        $('#newRow').append(dynamicfield.replace('select1_1','select1_'+row_id).replace('select2_1','select2_'+row_id));
       $(this).children().removeClass("fa fa-plus fa-1x ").addClass('fa fa-trash fa-1x text-danger')
       $(this).addClass('delete border-danger').removeClass('addnewRow')
        row_id++;
    });
    //delete row
    $(document).on('click', '.delete', function () {
        $(this).closest('.empty').remove();
    });

</script>
