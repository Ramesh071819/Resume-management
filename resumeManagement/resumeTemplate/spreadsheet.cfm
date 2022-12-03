 <!---<cfset application.ramesh="ASE"> 
<cfset server.ramesh='position'>
<cfset arguments.ramesh='qwerty'>
<cfset local.ramesh='qwerty'>
<cfoutput>#ramesh#</cfoutput>
<cfspreadsheet action="read" src="./upLoadFile/Book1.xlsx" query="ranfile" >
<cfset variables.ranArray1=[]>
<cfloop query='#ranfile#'> --->
<!---   <p><cfdump var="#ranfile['col_2']#"></p>  
    <cfset arrayAppend(variables.ranArray1,ranfile['col_2'])>
</cfloop>
 <cfdump var ='#variables.ranArray1#'>--->
<!---<cfdump var="#ranfile['col_2']#"> 
<cfloop array='#ranfile#' index='i'>
<cfdump var="#ranfile['col_2']#">
</cfloop>--->
  <cfquery name="details11" datasource="Employee">
        SELECT *
        FROM  [Employee].[dbo].[Emp]
    </cfquery>

<!--- <cfspreadsheet  action="write"  filename = "D:\demo.xls.xlsx" overwrite = "true" query = "details11" > --->

<cfoutput>
<p>#details11#</p>
</cfoutput>