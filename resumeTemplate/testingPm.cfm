
<cfinclude  template="formatInclude.cfm">
      <table id="mytable">
        
        <div class='container pt-3 '>
        <tr>
            <div class="row">
                <div class="col-md-4 ">
                    <label class='labelName'>First Name<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder firstName1"  name="firstName"   id="firstName1"  placeholder="">
                    <p id="error"></p>                          
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Middle Name</label>
                    <input type="checkbox" class=" middleName1"  name="middleName"   id="middleName1"  placeholder="">                         
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Last Name<span class="important">*</span></label>
                    <input type="checkbox" class=" fieldBorder lastName1"  name="lastName1"   id="lastName1"  placeholder="">                         
                </div>
            </div>
          </tr>
          <tr>
            <div class="row mt-3">
               <div class="col-md-4 ">
                    <label class='labelName'>First Name<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder firstName2"  name="firstName2"   id="firstName2"  placeholder="">                          
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Middle Name</label>
                    <input type="checkbox" class="middleName2"  name="middleName2"   id="middleName2"  placeholder="">                         
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Last Name<span class="important">*</span></label>
                    <input type="checkbox" class=" fieldBorder lastName2"  name="lastName"   id="lastName2"  placeholder="">                         
                </div>
            </div>
          </tr>
            <div><button class="" type="button" onclick="vaildations()">submit</button></div>
        </div>   
      </table>
        <script>
          function vaildations() {  
              for (let i = 1;i<=$('#mytable tr').length; i++){
               (($('#firstName'+i).val()=='') || (($('#middleName'+i).is(':checked')==false) &&  ($('#lastName'+i).is(':checked')==false))) ? alert('error'+i):''        
              alert(i)    
            }
          //  $('#firstName1').val()=='' ? alert(23):''
          }
          let x=0, 
          
        </script>