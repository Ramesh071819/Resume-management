
<!---         <cfcontent type="application/msexcel">  --->

<!---        <cfheader name="Content-Disposition" value="filename=Employees.xls">  --->   
 <!---     <cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')> 
    <cfset variables.qDetails=obj.spreadsheetData()>
   <cfdump var='#variables.qDetails#'> --->
 <!--- <cfheader name="Content-Disposition" value="filename=Employees.xls">
     <cfcontent type="application/msexcel"> 
            <cfoutput>
                <table class="table table-striped">
                    <tr> 
                        <th>first name</th>                     
                        <th>middle name</th>                     
                        <th>last name</th>                     
                        <th>email name</th>                     
                        <th> Phone Number</th>                     
                    </tr>
                    <cfloop query="#variables.qDetails#">
                        <tr>
                            <td>#variables.qDetails.FirstName#</td>                     
                            <td>#variables.qDetails.LastName#</td>                                               
                            <td>#variables.qDetails.MiddleName#</td>                     
                            <td>#variables.qDetails.Email#</td>                     
                            <td>#variables.qDetails.Phonenumber#</td>                     
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>--->
   <!---      <cfinclude  template="../resumeTemplate/formatInclude.cfm"> 
            <div>
                <input type='checkbox' value='1' class='ss'>
                <button type='button' id='dd'>submit</button>
               </di>
<script>
    $(document).ready(function(){
        $('#dd').click(function(){
             alert( $('.ss').val(); )
        })
    });

<cffunction  name="InsertingOESId" access="remote" >

        <cfargument  name="Oes_Id" required="true" >

        <cfargument  name="AssOESID" required="true" >

        <!--- <cfdump  var="#arguments#"><cfabort> --->

       

            <cfset myData = deserializeJSON(arguments.AssOESID)>

           

            <cfloop from="1" to="#ArrayLen(myData)#" index="i">

       

                <cfquery name="qInsertingOESId" datasource="PMDemoDataSource" result="InsertedDetail">

                    INSERT INTO dbo.AssociateOESNotes (OESId, AssociateOESID, AssociateNotes, Dates)

                    VALUES (

                        <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#arguments.Oes_Id#">,

                        <cfqueryparam cfsqltype="CF_SQL_INTEGER" value="#myData[i][1]#">,

                        <cfqueryparam cfsqltype="CF_SQL_VARCHAR" value="#myData[i][2]#">,

                        GETDATE()

                    )

                </cfquery>

               

            </cfloop>

    </cffunction>
</script>--->
 <!---<cfhttp result="result" method="GET" url="https://www.adobe.com/" path="D:\INFOANE20\Downloads1\" > 
    <cfhttpparam name="q" type="formfield" value="cfml">
    <cfheader name="Content-Disposition" value="filename=Employ.xls"> 
    <cfcontent type='application/msexcel'  reset="yes">
</cfhttp>
<cfdump var="#result#">
<!--- <cfhttp url="#local.ALTfileSource#" file="#local.newfileSource#" path="#application.FileServerPath#\TempPLMSupplier\" resolveurl="no"></cfhttp> 
<cfheader name="Content-Disposition" value="attachment; filename=#local.newfileSource#"> 
<cfcontent type="#mimeType#" file="#application.FileServerPath#\TempPLMSupplier\#local.newfileSource#" reset="yes">--->

