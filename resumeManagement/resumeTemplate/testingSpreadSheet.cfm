<!--- <cfspreadsheet  action="read" src = "Book1.xlsx" query='namee' > 
<cfloop query='#namee#' >
<cfoutput>#namee.col_1#</cfoutput>
</cfloop>
<cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
<cfset variables.qDetails=obj.spreadsheetData()>
<!--- <cfloop query="#variables.qDetails#"> --->
<!---     <cfspreadsheet  action="write" filename='details.xlxs' query='#variables.qDetails.EMAIL#' overwrite='true'  excludeheaderrow='true'> --->
<cfoutput>#variables.qDetails.EMAIL#</cfoutput>--->
<!--- </cfloop> --->
<cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
<cfset variables.qDetails=obj.spreadsheetData()>
<!--- <cfspreadsheet  action="write" filename='details.xls'  query='#variables.qDetails.EMAIL#' overwrite='true'> --->

<CFSPREADSHEET ACTION="write" 
               FILENAME="D:\INFOANE20\Book1.xlsx" 
               QUERY="variables.qDetails"  
               OVERWRITE=true>
