<!---  <cfif isDefined('URL.resendmail')> 
  <cfset variables.randomNumber1='#randRange(100000,1000000, "SHA1PRNG")#'>
  <cftry> 
<cfmail to="ram7287808290@gmail.com" from="romanreignsinfoane@gmail.com" subject="smtp test">#variables.randomNumber1#</cfmail>
<cfcatch>
  <cfquery name="qresendMail" datasource="Resume-Management">
      UPDATE hrlogindetails
      SET Passcode =<cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.randomNumber1#">
      where Email='#URL.resendmail#'
  </cfquery>
  </cfcatch>
</cftry>
<cflocation url ="hrForgotPassword.cfm?passcode=%27793544%27&OtpEmail=sravya@infoane.com">
</cfif> --->