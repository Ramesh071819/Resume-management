<cfinclude  template="formatInclude.cfm">
 <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>
<script src="de.js"></script>
<cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')> 
<cfset variables.remenberVal=obj.allHrDetails()>
<script src="../resumeJsFiles/login.js"></script>
<link href="../resumeCssFiles/login.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<!---  <cfdump var='#cookie.emailCookie#'>  
 <cfdump var='#cookie.passwordCookie#'>
  <cfdump var='#cookie.rememberCookie#'> --->
<cfoutput>
  <cfparam name="rememberCookie" default="">
  <cfparam name="emailCookie" default="">
  <cfparam name="passwordCookie" default="">
  <cfif isDefined('cookie.rememberCookie')>
    <cfset variables.rememberCookie="#cookie.rememberCookie#">
    <cfset variables.emailCookie="#cookie.emailCookie#">
    <cfset variables.passwordCookie="#cookie.passwordCookie#">
  </cfif>
  <div class="container">
    <div class="d-flex justify-content-center mt-5 ">
      <form  id="form" action="hrlogin.cfm" id="form" method="post">
        <div class="col-md-12 mt-5">
          <h2 class="resumeText mt-1">Resume Management </h2>
          <h5 class="resumeHeaderText mb-4">BY INFOANE</h5>
        </div>  
        <div class="col-md-12 " >        
            <input type="text" class="form-control"  name="loginmail"   id="email" value="# variables.emailCookie#" placeholder="Email">                         
            <p id="emailerror" class="text-danger"></p> 
        </div>        
        <div class="col-md-12">              
          <input type="password" class="form-control" name="loginpasswords" id="password" placeholder=" Password"  value="# variables.passwordCookie#">             
          <!---     <i class="fa fa-eye" class="eyeIcon input-group-text "></i> --->
          <p id="pwderror" class="text-danger"></p>
        </div>
        <div class="col-md-12 mt-2">
          <input type="checkbox"  class="mb-3 me-1" id="remember" name="remember" <cfif  variables.rememberCookie NEQ '' >checked</cfif>> Remember me
        </div>
        <div>
          <a href="hrForgotPassword.cfm" class="forgetLink" ><b>Forgot Password ?</b></a>
          <button type="button" class="btn btn-outline-primary submitBtn" id="signInBtn">Log in</button>
        </div> 
      </form> 
    </div>       
  </div>
</cfoutput>  


      