<cfif structKeyExists(session, "FirstName")>
    <cfset structdelete(session,'FirstName')>
    <cflocation  url="index.cfm">
</cfif>