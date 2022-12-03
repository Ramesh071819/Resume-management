<cfcomponent>
    <cffunction  name="candidateDetails" access="remote" returnformat="JSON"> 
        <cfargument  name="fname"  required="true"> 
        <cfargument  name="mname" required="true" > 
        <cfargument  name="lname" required="true" >
        <cfargument  name="email" required="true">
        <cfargument name="mobileNumber" required="true">
        <cfargument name="altNumber" required="true">
        <cfargument name="dateOfBirth" required="true">
        <cfargument  name="gender" required="true"> 
        <cfargument  name="highestDegree" required="true"> 
        <cfargument  name="experience" required="true"> 
        <cfargument  name="nationality" required="true"> 
        <cfargument  name="noticePeriod" required="true"> 
        <cfargument  name="previousCompany" required="true"> 
        <cfargument  name="currentCtc" required="true"> 
        <cfargument  name="expectedCtc" required="true"> 
        <cfargument  name="department" required="true">
        <cfargument  name="Skills"> 
        <cfargument  name="presentAddress1" required="true">
        <cfargument  name="presentAddress2" required="true">   
        <cfargument  name="presentZipcode" required="true"> 
        <cfargument  name="presentState" required="true"> 
        <cfargument  name="presentCity" required="true"> 
        <cfargument  name="presentNumber" required="true"> 
        <cfargument  name="permanentAddress1" required="true"> 
        <cfargument  name="permanentAddress2" required="true"> 
        <cfargument  name="permanentZipcode" required="true"> 
        <cfargument  name="permanentState" required="true"> 
        <cfargument  name="permanentCity" required="true"> 
        <cfargument  name="permanentPhoneNumber" required="true">
        <cfquery name="qGetCandidateEmail" datasource="Resume-Management">
            SELECT Email
            FROM candidatedinfo
            WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">
        </cfquery>
        <cfif qGetCandidateEmail.RecordCount EQ 0>
            <cfquery name="qcandidateDetails" datasource="Resume-Management">
                INSERT INTO candidatedinfo(FirstName,MiddleName,LastName,Email,MobileNumber,AlternateNumber,DateOfBirth,Gender,Qualification,Experience,Nationality,NoticePeriod,CurrentEmployer,CurrentCTC,ExpectedCTC,Department,SkillSet,PresentAddress,PresentAddressLine2,Zipcode,State,City,PhoneNumber,PermanentAddress,PermanentAddressLine2,PermanentZipcode,PermanentState,PermanentCity,PermanentNumber)    
                VALUES(
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.lname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mobileNumber#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.altNumber#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dateOfBirth#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.gender#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.highestDegree#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.experience#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.nationality#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.noticePeriod#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.previousCompany#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.currentCtc#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.expectedCtc#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.department#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Skills#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentAddress1#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentAddress2#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentZipcode#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentState#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentCity#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.presentNumber#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentAddress1#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentAddress2#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentZipcode#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentState#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentCity#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentPhoneNumber#">   
                )
            </cfquery>
            <cfquery name="qGetId" datasource="Resume-Management">
                SELECT Id
                FROM candidatedinfo
                WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">
            </cfquery>
            <cfset session.multifileID="#qGetId.Id#">
            <cfset local.flag = 1/>
          <cfelse>
            <cfset local.flag = 2/>
        </cfif>
        <cfreturn local.flag/>
    </cffunction>
<!---  index.cfm function    --->
     <cffunction  name="getLoginDetails" access="remote" returnformat="JSON">  
         <cfargument  name="emailId"  required="true">
         <cfargument  name="Loginpassword"  required="true">
          <cfquery name="getHrDetails" datasource="Resume-Management">
              SELECT Email,Password,Name              
              FROM hrlogindetails             
              WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> AND 
                    Password=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Loginpassword#">
          </cfquery> 
            <cfquery name="AdminDetails" datasource="Resume-Management">
              SELECT Email,Password,Name,Admin              
              FROM hrlogindetails             
              WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> AND 
                    Password=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Loginpassword#">AND
                    Admin=<cfqueryparam cfsqltype="cf_sql_varchar" value="1">
          </cfquery>      
          <cfif getHrDetails.RecordCount GT 0 > 
              <cfset variables.flag = 1> 
              <cfset session.Name="#getHrDetails.Name#">
              <cfset session.Password="#getHrDetails.Password#">
              <cfelse>
              <cfset variables.flag =2>              
          </cfif>
          <cfif AdminDetails.RecordCount GT 0 >
               <cfset variables.flag =3> 
               <cfset session.Admin="#AdminDetails.Name#">
          </cfif> 
        <cfreturn variables.flag> 
    </cffunction>
<!---  forgot password function    --->
    <cffunction  name="forgotPasswordiframe" access="remote" returnformat="JSON">  
         <cfargument  name="emailId"  required="true">
         <cfargument  name="mobileNumber"  required="true">
          <cfquery name="getloginDetails" datasource="Resume-Management">
              SELECT Email,Password,Name,MobileNumber,Id              
              FROM hrlogindetails             
              WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> AND 
                    MobileNumber=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mobileNumber#">
          </cfquery> 
        <cfif getloginDetails.RecordCount GT 0 > 
            <cfset variables.flag = 1>
        <cfelse>
            <cfset variables.flag =2>              
        </cfif> 
        <cfreturn variables.flag> 
    </cffunction>
    <cffunction  name="FiltergetCandidateDetails" access="remote" returnformat="JSON"  returnType="query">  
         <cfargument  name="fname"  required="false">
          <cfargument  name="mname"  required="false">  
          <cfargument  name="lname"  required="false">  
          <cfargument  name="email"  required="false">  
          <cfargument  name="gender"  required="false">  
          <cfargument  name="Qualification"  required="false"> 
          <cfargument  name="Department"  required="false">      
        <cfquery name="qfilterdetails" datasource="Resume-Management">             
            SELECT distinct candidatedinfo.Qualification,candidatedinfo.Department,candidatedinfo.FirstName,candidatedinfo.MiddleName,candidatedinfo.LastName,candidatedinfo.Email,candidatedinfo.Gender,candidatedinfo.Id,candidatedinfo.MobileNumber,candidatedinfo.CurrentCTC
            FROM  candidatedinfo 
            INNER JOIN  candidatefiles ON  candidatefiles.candidateId = candidatedinfo.Id 
            WHERE  Qualification like '#arguments.Qualification#' or Department like '#arguments.Department#' or FirstName like '#arguments.fname#' or MiddleName  like '#arguments.mname#' or  LastName like '#arguments.lname#'  or Email like '#arguments.email#'  or Gender like '#arguments.gender#'                      
        </cfquery>   
        <cfreturn qfilterdetails>
    </cffunction>
    <cffunction  name="getCandidateDetails" access="public">       
        <cfquery name="qdetails" datasource="Resume-Management">             
            SELECT distinct candidatedinfo.FirstName,candidatedinfo.Id,candidatedinfo.MiddleName,candidatedinfo.LastName,candidatedinfo.Email,candidatedinfo.CurrentCTC,candidatedinfo.City,candidatedinfo.PhoneNumber,candidatedinfo.State,candidatedinfo.PresentAddress,candidatedinfo.MobileNumber
            FROM  candidatedinfo 
            INNER JOIN  candidatefiles ON  candidatefiles.candidateId = candidatedinfo.Id                           
    </cfquery>   
        <cfreturn qdetails>
    </cffunction>
     <cffunction  name="getSingleCandidateDetails" access="remote" returnformat="JSON">
        <cfargument  name="Details"  required="true">
        <cfquery name="qDbDetails" datasource="Resume-Management">             
            SELECT candidatedinfo.FirstName,candidatedinfo.MiddleName,candidatedinfo.LastName,candidatedinfo.Email,candidatedinfo.CurrentCTC,candidatedinfo.City,candidatedinfo.PhoneNumber,candidatedinfo.PresentAddress,candidatedinfo.State,candidatefiles.FilePath
            FROM  candidatedinfo 
            INNER JOIN  candidatefiles ON  candidatefiles.candidateId = candidatedinfo.Id  
            WHERE  Id=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Details#">                               
        </cfquery>   
        <cfreturn qDbDetails>
    </cffunction>
    <cffunction  name="UpdateSingleCandidateDetails" access="remote" returnformat="JSON">
        <cfargument  name="fname"  required="true">
        <cfargument  name="mname"  required="true">
        <cfargument  name="lname"  required="true">
        <cfargument  name="email"  required="true">
        <cfargument  name="ctc"  required="true">
        <cfargument  name="address"  required="true">
        <cfargument  name="city"  required="true">
        <cfargument  name="state"  required="true">
        <cfargument  name="number"  required="true">
        <cfargument  name="dbID1"  required="true">
        <cfargument  name="uploadedFiles"  required="false">
        <cfargument  name="uploadedFileName"  required="false">
        <cfquery name="qupdateDetails" datasource="Resume-Management">             
            Update candidatedinfo
            SET FirstName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fname#">,
                MiddleName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mname#">,
                LastName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.lname#">,
                Email=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">,
                CurrentCTC=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.ctc#">,
                PresentAddress=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.address#">,
                City=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.city#">,
                State=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.state#">,
                PhoneNumber=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.number#">
            WHERE  Id=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dbID1#">                               
        </cfquery> 
       <!--- <cfquery name="quploadedFiles" datasource="Resume-Management">
            Update candidatefiles
            set FilePath=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.uploadedFiles#">,
                 FileName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.uploadedFileName#">
            where  candidateId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dbID1#">
         </cfquery> --->
        <cfreturn>
    </cffunction>
<!---new file update      --->
    <cffunction name="newfileUpload" access="remote" returnformat="JSON">
        <cfargument name="referenceId"  required="true">
        <cfargument name="newfile"  required="true">
         <cfargument name="newfileName"  required="true">
            <cfquery name="qnewfile" datasource="Resume-Management">
                update candidatefiles
                set FilePath=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.newfile#">,
                    FileName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.newfileName#">
                where candidateId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.referenceId#">
            </cfquery>
       <cfreturn>
    </cffunction>
<!---  hr details    --->
   <cffunction name="hrdetails" access="remote" returnformat="JSON">
        <cfargument name="hremail"  required="true">
        <cfargument name="hrpwd"  required="true">
        <cfargument name="hrname"  required="true">
        <cfargument name="hrmobile"  required="true">
            <cfquery name="qhrdetails" datasource="Resume-Management">
                insert into hrlogindetails(Email,Password,Name,MobileNumber)
                values(
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hremail#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrpwd#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrname#">,
                     <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrmobile#">
                )
            </cfquery>
       <cfreturn>
    </cffunction>
<!--- Active Hr     --->
    <cffunction  name="ActiveHr" access="remote"  returnformat="JSON" >
        <cfargument  name="hrActive"  required="true">
        <cfquery name="qhrActive" datasource="Resume-Management">
            update hrlogindetails
            set Active=0
            where Id= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrActive#">
        </cfquery>
    </cffunction>
    <cffunction  name="forgetpassword1" access="remote"  returnformat="JSON" >
        <cfargument  name="emailId"  required="true">
        <cfargument  name="Password"  required="true">
         <cfquery name="qEmailexists" datasource="Resume-Management">
            SELECT Email   
            FROM hrlogindetails
            WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
        </cfquery> 
        <cfdump var="#qEmailexists.Email#">
        <cfif qEmailexists.RecordCount GT 0>
            <cfdump var="#qEmailexists.Email#">   
            <cfquery name="qforgetpassword" datasource="Resume-Management" > 
                UPDATE hrlogindetails
                SET Password =<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Password#">    
                WHERE  Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
            </cfquery>
             <cfset local.flag =1>
            <cfelse>
            <cfset local.flag =2 /> 
        </cfif>  
        <cfreturn local.flag>       
    </cffunction>
    <cffunction  name="allHrDetails" access="public">       
        <cfquery name="qallHrDetails" datasource="Resume-Management">             
            SELECT Id,Email,Password,Name  
            FROM  hrlogindetails
            WHERE Admin is null and Active=1                              
        </cfquery>
        <cfreturn qallHrDetails> 
    </cffunction>  
    <cffunction  name="candidateUploadedFiles" access="remote" returnformat="JSON">
        <cfargument  name="allFiles"  required="true">       
        <cfquery name="qcandidateUploadedFiles" datasource="Resume-Management">             
            SELECT FileName 
            FROM  candidatefiles
            WHERE candidateId= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.allFiles#">                              
        </cfquery>
        <cfreturn qcandidateUploadedFiles> 
    </cffunction> 
<!---     <cffunction  name="resndOtp" access="remote"  returnformat="JSON" > 
        <cfargument  name="emailId"  required="true">
        <cfargument  name="Loginpasscode"  required="true">
        <cfquery name="qResndOtp" datasource="Resume-Management" > 
            UPDATE hrlogindetails
            SET Passcode=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Password#">    
            WHERE  Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
        </cfquery>
    </cffunction>--->    

<!---   returning two quaries   --->
    <cffunction  name="structLoopPractice" access="public">       
        <cfquery name="structquery1" datasource="Resume-Management">             
            SELECT  FirstName,MiddleName,LastName,Email,MobileNumber,AlternateNumber,DateOfBirth,Gender,Qualification,Experience,Nationality,NoticePeriod,CurrentEmployer,CurrentCTC,ExpectedCTC,Department,SkillSet,PresentAddress,PresentAddressLine2,Zipcode,State,City,PhoneNumber,PermanentAddress,PermanentAddressLine2,PermanentZipcode,PermanentState,PermanentCity,PermanentNumber
            FROM  candidatedinfo                               
        </cfquery> 
        <cfquery name="structquery2" dbtype="query">
            select FirstName,MiddleName from structquery1 
        </cfquery> 
        <cfset variables.structName1={"select1Db":"#structquery1#","select2Db":"#structquery2#"}> 
        <cfset   variables.arrayName=[structquery1,structquery2]>
        <cfreturn  variables.structName1>
    </cffunction> 
</cfcomponent>
