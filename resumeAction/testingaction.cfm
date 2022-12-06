<cfif structKeyExists(URL,'ramesh')> 
 <cfinvoke 
component = "../resumeObject/addUser.cfc" 
method = "testing" 
returnVariable = "bvalues" 
>
<cfdump var="#bvalues#">
 </cfif>

