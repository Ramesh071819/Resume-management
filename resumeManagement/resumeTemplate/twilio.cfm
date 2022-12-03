
<cfinclude  template="formatInclude.cfm">
<!— enter your information for the following parameters —>
<cfset accountSid=”yourAccountSid”>
<cfset secret=”yourSecretKey”>
<cfset caller=”yourVerifiedCallerId”>
<cfset called=”phonenumberToCall”>
<cfset action_url=”urlToExecute”>

<!— make the rest request —>
<cfhttp url=”https://api.twilio.com/2008-08-01/Accounts/#accountSid#/Calls”
method=”POST”
username=”#accountSid#”
password=”#secret#”>
<cfhttpparam name=”Caller” type=”FormField” value=”#caller#”>
<cfhttpparam name=”Called” type=”FormField” value=”#called#”>
<cfhttpparam name=”Url” type=”FormField” value=”#action_url#”>
</cfhttp>

<!— display results —>
<cfoutput>
HTTP Response = #cfhttp.statusCode# <br>
<textarea cols=80 rows=10>
https://api.twilio.com/2008-08-01/Accounts/#accountSid#/Calls

#cfhttp.fileContent#
</textarea>
</cfoutput>