<cfinclude  template="formatInclude.cfm">
<script src="../resumeJsFiles/login.js"></script>
<link href="../resumeCssFiles/login.css" rel="stylesheet">

  <div class="container">
        <div class="row par">
            <div class="col-md-3 dd " id='ramesh2'>
              <select>
                  <option>fsdfdsfsdfsdfsdf</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
            <div class="col-md-3">
              <select>
                  <option>fsdf</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
             <div class="col-md-3">
              <select>
                  <option>vcxvcxvvc</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
            <div class="col-md-3">
              <button class="login">login</button>
            </div>
               
        </div>  
        <div class="row par" >
            <div class="col-md-3 dd " id='ramesh1'>
              <select>
                  <option>fsdffgfgdfgdfg</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
            <div class="col-md-3 ">
              <select>
                  <option>fsdf</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
             <div class="col-md-3">
              <select>
                  <option>fsdf</option>
                  <option>fsdf</option>
                  <option>fsdf</option>
                
              </select>
            </div>
            <div class="col-md-3">
              <button class="login">login</button>
            </div>        
        </div>            
   </div>
   <script>
   $(".login").click(function() { 
    $(this).parent().parent().find('.dd').hide()
    // $(this).parents('div').find('div:eq(0)').closest('.dd').remove();
   })
   
   </script>
