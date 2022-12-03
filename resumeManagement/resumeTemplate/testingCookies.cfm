<cfinclude  template="formatInclude.cfm"> 
<form action="" method="post" id="login">
<fieldset>
<legend>Login</legend>
<label for="username" class="label">Username</label>
<input type="text" name="username" id="username" class="text" maxlength="30" />
<label for="password" class="label">Password</label>
<input type="password" name="password" id="password" class="text" maxlength="30" />
<input type="checkbox" name="remember" id="remember" />
<label for="remember">Remember me</label>
<input type="button" name="submit" value="Login" id="Login" />
</fieldset>
</form>
<script>
$(document).ready(function(){
$("#Login").click(function() {
  alert('d')   
if ($('#remember').prop('checked')) {
var username = $('#username').attr("value");
alert('ramesh')
}
<!--- var password = $('#password').attr("value");
// set cookies to expire in 14 days
$.cookie('username', username, { expires: 14 });
$.cookie('password', password, { expires: 14 });
$.cookie('remember', true, { expires: 14 });
} else {
// reset cookies
$.cookie('username', null);
$.cookie('password', null);
$.cookie('remember', null);
}
var remember = $.cookie('remember');
if ( remember == 'true' ) {
var username = $.cookie('username');
var password = $.cookie('password');
// autofill the fields
$('#username').attr("value", username);
$('#password').attr("value", password);
}--->
})
})
</script>
