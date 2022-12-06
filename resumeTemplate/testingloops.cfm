<!--- Create a structure and set its contents. 
<cfset departments=structnew()> 
 
<cfset val=StructInsert(departments, "John", "Sales")> 
<cfset val=StructInsert(departments, "Tom", "Finance")> 
<cfset val=StructInsert(departments, "Mike", "Education")> 
<cfset variables.arrayname=["ramesh","rakesh","rohit","kohli"]>
<cfset variables.listname="ramesh,rakesh,rohit,kohli">


<!--- Build a table to display the contents ---> 

<table cellpadding="2" cellspacing="2"> 
    <tr> 
        <td><b>Employee</b></td> 
        <td><b>Department</b></td> 
    </tr> 
    <!--- Use cfloop to loop through the departments structure.  
    The item attribute specifies a name for the structure key. ---> 
    <cfset rock={"ramesh":"raju","rakesh":"problem","arrayName":"[1,1,1,1,1,1,1]"}>
        <cfloop collection="#rock#" item="a"> 
            <tr> 
                <td><cfoutput>#rock[a]#</cfoutput></td>
                <td><cfoutput>#a#</cfoutput></td>
            </tr> 
       </cfloop> 
</table> ---> 

  <cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
                <cfset variables.qDetails=obj.structLoopPractice()>
                <cfdump var="#variables.qDetails#">
               
<!---               <cfset variables.skk="#variables.qDetails.select1Db#"> --->
               

          <!---           <cfdump var="#variables.skk#">
                  <cfdump var="#variables.qDetails[1].FirstName#">
                  <cfloop query="#variables.qDetails[1]#" >
                l <cfoutput>    
                 <tr>
                 <td>#variables.qDetails[1].FirstName#</td>
                  <td>#variables.qDetails[1].MiddleName#</td>
                 </tr>
                 </cfoutput>
                  </cfloop>--->
     <!---             <cfdump var="#variables.qDetails.select1Db.MiddleName[2]#"> --->
<!--- Object of type class coldfusion.runtime.Struct cannot be used as an array 
                <cfloop query="#variables.skk#" >            
<!--- Object of type class coldfusion.sql.QueryTable cannot be used as an array --->
                <cfoutput>
                   <td>#variables.skk.FirstName#</td>
                </cfoutput>
                </cfloop>  
                 <cfset obj = createObject('component','\resumeManagement\resumeObject\addUser')>
                <cfset variables.qDetails=obj.structLoopPractice()>
<!---                 <cfinvoke component = "\resumeManagement\resumeObject\addUser" method = "structLoopPractice" returnVariable = "variables.arrayName">  
                 <cfdump var="#variables.arrayName#"> 
                <cfdump var="#variables.qDetails#">--->
                <table style = "border: 1px solid red">
                 <tr><th>firstName</th>
                 <th>MiddleName</th>
                 </tr>
                 <cfloop query="#variables.qDetails[1]#" >
                 <cfoutput>    
                 <tr>
                 <td>#variables.qDetails[1].FirstName#</td>
                  <td>#variables.qDetails[1].MiddleName#</td>
                 </tr>
                 </cfoutput>
                  </cfloop>
    </table>--->