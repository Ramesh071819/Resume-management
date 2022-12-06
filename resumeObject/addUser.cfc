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
        <cfquery name="qGetCandidateEmail" datasource="ResumeManagementSql">
            SELECT Email
            FROM [Resumemgnt].[dbo].[Candidatedetails]
            WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">
        </cfquery>
        <cfif qGetCandidateEmail.RecordCount EQ 0>
            <cfquery name="qcandidateDetails" datasource="ResumeManagementSql">
                INSERT INTO [Resumemgnt].[dbo].[Candidatedetails](FirstName,
                    MiddleName,
                    LastName,
                    Email,
                    MobileNumber,
                    AlternateNumber,
                    Dateofbirth,
                    Gender,
                    HighestQualification,
                    YearsofExperience,
                    Nationality,
                    NoticePeriod,
                    CurrentEmployee,
                    CurrentCTC,
                    ExpectedCTC,
                    Department,
                    Skillset,
                    PresentLocality,
                    Area2,
                    PresentPincode,
                    PresentState,
                    PresentCity,
                    PresentPhoneNumber,
                    PermanentLocality,
                    permanentarea2,
                    PermanentPincode,
                    PermanentState,
                    PermanentCity,
                    permanentPhoneNumber,
                    EmpId)    
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
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.permanentPhoneNumber#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="3">   
                )
            </cfquery>
            <cfquery name="qGetId" datasource="ResumeManagementSql">
                SELECT CandidateId
                FROM [Resumemgnt].[dbo].[Candidatedetails]
                WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">
            </cfquery>
            <cfset session.multifileID="#qGetId.CandidateId#">
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
            <cfquery name="getHrDetails" datasource="Employee">
                SELECT Email,
                EncryptedPassword,
                FirstName,
                generateKey              
                FROM [Employee].[dbo].[Emp]             
                WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> 
            </cfquery>
            <cfquery name="AdminDetails" datasource="Employee">
                SELECT Email,
                    EncryptedPassword,
                    FirstName,
                    generateKey              
                FROM  [Employee].[dbo].[Emp]             
                WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> AND
                        DepId=<cfqueryparam cfsqltype="cf_sql_varchar" value="1">
            </cfquery>    
        <cfset  dbpassword1="#getHrDetails.EncryptedPassword#">         
        <cfset dpecryptkey1="#getHrDetails.generateKey#">              
        <cfset decrypted=decrypt(dbpassword1, dpecryptkey1, "AES", "Base64")>
        <cfif getHrDetails.RecordCount GT 0 AND '#arguments.Loginpassword#' EQ '#decrypted#'>
            <cfset variables.flag = 1> 
            <cfset session.Name="#getHrDetails.FirstName#">
    <!---               <cfset session.Password="#getHrDetails.Password#">  --->
        <cfelse>
            <cfset variables.flag =2>              
        </cfif>
        <cfif AdminDetails.RecordCount GT 0 AND '#arguments.Loginpassword#' EQ '#decrypted#'>
            <cfset variables.flag =3> 
            <cfset session.Admin="#AdminDetails.FirstName#">
        </cfif> 
        <cfreturn variables.flag> 
    </cffunction>
    <!---  forgot password function    --->
    <cffunction  name="forgotPasswordiframe" access="remote" returnformat="JSON">  
        <cfargument  name="emailId"  required="true">
        <cfargument  name="mobileNumber"  required="true">
        <cfquery name="getloginDetails" datasource="Employee">
            SELECT Email,
            FirstName,
            Phonenumber,
            EmpId              
            FROM  [Employee].[dbo].[Emp]            
            WHERE Email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> AND 
                Phonenumber=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mobileNumber#">
        </cfquery> 
        <cfif getloginDetails.RecordCount GT 0 > 
            <cfset variables.flag = 1>
        <cfelse>
            <cfset variables.flag =2>              
        </cfif> 
        <cfreturn variables.flag> 
    </cffunction>
    <!---    filtering  --->
    <cffunction  name="FiltergetCandidateDetails" access="remote" returnformat="JSON"  returnType="query">  
        <cfargument  name="fname"  required="false">
        <cfargument  name="mname"  required="false">  
        <cfargument  name="lname"  required="false">  
        <cfargument  name="email"  required="false">  
        <cfargument  name="gender"  required="false">  
        <cfargument  name="Qualification"  required="false"> 
        <cfargument  name="Department"  required="false">     
        <cfquery name="qfilterdetails" datasource="ResumeManagementSql">             
            SELECT distinct HighestQualification,
                Department,
                FirstName,
                MiddleName,
                LastName,
                Email,
                Gender,
                CandidateId,
                MobileNumber,
                CurrentCTC
            FROM   [Resumemgnt].[dbo].[Candidatedetails] 	 
            where EmpId=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">	
            <cfif structKeyExists(arguments, 'Qualification') AND arguments.Qualification NEQ "">
				AND	HighestQualification like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.Qualification#%" />
			</cfif>
             <cfif structKeyExists(arguments, 'Department') AND arguments.Department NEQ "" >
				AND	Department like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.Department#%" />
			</cfif>
             <cfif structKeyExists(arguments, 'fname') AND arguments.fname NEQ "" >
				AND	FirstName like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.fname#%" />
			</cfif>
            <cfif structKeyExists(arguments, 'mname') AND arguments.mname NEQ "" >
				AND	MiddleName like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.mname#%" />
			</cfif>
            <cfif structKeyExists(arguments, 'lname') AND arguments.lname NEQ "" >
				AND	LastName like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.lname#%" />
			</cfif>
            <cfif structKeyExists(arguments, 'email') AND arguments.email NEQ "" >
				AND	Email like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.email#%" />
			</cfif>
            <cfif structKeyExists(arguments, 'gender') AND arguments.gender NEQ "" >
				AND	Gender like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.gender#%" />
			</cfif> 
        </cfquery>   
        <cfreturn qfilterdetails>
    </cffunction>
    
    <cffunction  name="getCandidateDetails" access="public">       
        <cfquery name="qdetails" datasource="ResumeManagementSql">             
            SELECT distinct c.FirstName,
                c.CandidateId,
                c.MiddleName,
                c.LastName,
                c.Email,
                c.CurrentCTC,
                c.PresentCity,
                c.MobileNumber,
                c.PresentState,
                c.PresentLocality,
                c.MobileNumber
            FROM   [Resumemgnt].[dbo].[Candidatedetails] c
            INNER JOIN  [Resumemgnt].[dbo].[Resume] R ON  R.[CandidateId] = c.[CandidateId] 
            WHERE c.[EmpId]=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">                         
        </cfquery>   
        <cfreturn qdetails>
    </cffunction>

    <cffunction  name="getSingleCandidateDetails" access="remote" returnformat="JSON">
        <cfargument  name="Details"  required="true">
        <cfquery name="qDbDetails" datasource="ResumeManagementSql">             
            SELECT c.FirstName,
                c.MiddleName,
                c.LastName,
                c.Email,
                c.CurrentCTC,
                c.PresentCity,
                c.MobileNumber,
                c.PresentLocality,
                c.PresentState,
                R.FilePath
            FROM  [Resumemgnt].[dbo].[Candidatedetails] c
            INNER JOIN  [Resumemgnt].[dbo].[Resume] R ON  R.[CandidateId] = c.[CandidateId]  
            WHERE  c.[CandidateId] =<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Details#">  and c.[EmpId]=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">                              
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
            <cfquery name="qupdateDetails" datasource="ResumeManagementSql">             
                Update [Resumemgnt].[dbo].[Candidatedetails]
                SET FirstName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fname#">,
                    MiddleName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mname#">,
                    LastName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.lname#">,
                    Email=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">,
                    CurrentCTC=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.ctc#">,
                    PresentLocality=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.address#">,
                    PresentCity=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.city#">,
                    PresentState=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.state#">,
                    MobileNumber=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.number#">
                WHERE  CandidateId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dbID1#"> and EmpId=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">                                
            </cfquery> 
            <cfif structKeyExists(arguments, 'uploadedFiles') AND structKeyExists(arguments, 'uploadedFileName') >
                <cfquery name="quploadedFiles" datasource="ResumeManagementSql">
                    Update [Resumemgnt].[dbo].[Resume]
                    set FilePath=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.uploadedFiles#">,
                        FileName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.uploadedFileName#">
                    where  candidateId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dbID1#">
                </cfquery> 
            </cfif>
        <cfreturn>
    </cffunction>
    <!---new file update     
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
    </cffunction> --->
    <!---  hr details  done  --->
    <cffunction name="hrdetails" access="remote" returnformat="JSON">
        <cfargument name="FirstName"  required="true">
        <cfargument name="middleName"  required="true">
        <cfargument name="hrLname"  required="true">
        <cfargument name="hremail"  required="true">          
        <cfargument name="hrpwd"  required="true">
        <cfargument name="hrmobile"  required="true">
        <cfset variables.key1 = generateSecretKey("AES")>
        <cfset variables.encrypted=encrypt('#arguments.hrpwd#',variables.key1, "AES", "Base64")>
            <cfquery name="qhrdetails" datasource="Employee">
                insert into [Employee].[dbo].[Emp](FirstName,
                                                    MiddleName,
                                                    LastName,
                                                    Email,
                                                    generateKey,
                                                    EncryptedPassword,
                                                    Phonenumber,
                                                    DepId)
                values(
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.FirstName#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.middleName#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrLname#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hremail#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.key1#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.encrypted#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrmobile#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="2">
                )
            </cfquery>
       <cfreturn>
    </cffunction>
        <!---
    <cffunction  name="UpdateSingleCandidateDetails1" access="remote" returnformat="JSON">
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
            <cfquery name="qupdateDetails" datasource="ResumeManagementSql">             
                Update [Resumemgnt].[dbo].[Candidatedetails]
                SET FirstName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.fname#">,
                    MiddleName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.mname#">,
                    LastName=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.lname#">,
                    Email=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.email#">,
                    CurrentCTC=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.ctc#">,
                    PresentLocality=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.address#">,
                    PresentCity=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.city#">,
                    PresentState=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.state#">,
                    MobileNumber=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.number#">
                WHERE  CandidateId=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dbID1#"> and EmpId=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">                                
            </cfquery> 
        <cfreturn>
    </cffunction>--->
    <!--- Active Hr     --->
    <cffunction  name="ActiveHr" access="remote"  returnformat="JSON" >
        <cfargument  name="hrActive"  required="true">
        <cfquery name="qhrActive" datasource="Employee">
            update [Employee].[dbo].[Emp]
            set Active=0
            where EmpId= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.hrActive#">
        </cfquery>
    </cffunction>
    
    <cffunction  name="forgetpassword1" access="remote"  returnformat="JSON" >
        <cfargument  name="emailId"  required="true">
        <cfargument  name="Password"  required="true">
        <cfquery name="qEmailexists" datasource="Employee">
            SELECT Email   
            FROM [Employee].[dbo].[Emp]
            WHERE Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
        </cfquery> 
        <cfif qEmailexists.RecordCount GT 0>
            <cfset variables.key2 = generateSecretKey("AES")>
            <cfset variables.encrypted1=encrypt('#arguments.Password#',variables.key2, "AES", "Base64")>   
            <cfquery name="qforgetpassword" datasource="Employee" > 
                UPDATE [Employee].[dbo].[Emp]
                SET EncryptedPassword =<cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.encrypted1#">,
                generateKey=<cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.key2#">
                WHERE  Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
            </cfquery>
            <cfset local.flag =1>
        <cfelse>
            <cfset local.flag =2 /> 
        </cfif>  
        <cfreturn local.flag>       
    </cffunction>

    <cffunction  name="allHrDetails" access="public">       
        <cfquery name="qallHrDetails" datasource="Employee">             
            SELECT FirstName,
                    MiddleName,
                    Email,
                    Phonenumber,
                    EmpId,
                    LastName,
                    Gender  
            FROM  [Employee].[dbo].[Emp]
            WHERE DepId=<cfqueryparam cfsqltype="cf_sql_varchar" value="2"> and Active= <cfqueryparam cfsqltype="cf_sql_varchar" value="1">                          
        </cfquery>
        <cfreturn qallHrDetails> 
    </cffunction> 

    <cffunction  name="candidateUploadedFiles" access="remote" returnformat="JSON">
        <cfargument  name="allFiles"  required="true">       
        <cfquery name="qcandidateUploadedFiles" datasource="ResumeManagementSql">             
            SELECT FileName 
            FROM  [Resumemgnt].[dbo].[Resume]
            WHERE candidateId= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.allFiles#"> and [Resumemgnt].[dbo].[Resume].[EmpId]=<cfqueryparam cfsqltype="cf_sql_varchar" value="3">                              
        </cfquery>
        <cfreturn qcandidateUploadedFiles> 
    </cffunction> 
 
    <cffunction  name="getOTP" access="remote" returnformat="JSON">
        <cfargument  name="emailId"  required="true">
            <cfquery name="qgetOTP" datasource="Employee">             
                SELECT [Passcode]
                FROM  [Employee].[dbo].[Emp]
                WHERE Email=  <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">                      
            </cfquery>
        <cfreturn qgetOTP> 
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
       
    <!---   returning two quaries  in array or struct  --->
    <cffunction  name="structLoopPractice" access="public">       
        <cfquery name="structquery1" datasource="Resume-Management">             
            SELECT  FirstName,
                    MiddleName,
                    LastName,
                    Email,
                    MobileNumber,
                    AlternateNumber,
                    DateOfBirth,
                    Gender,
                    Qualification,
                    Experience,
                    Nationality,
                    NoticePeriod,
                    CurrentEmployer,
                    CurrentCTC,
                    ExpectedCTC,
                    Department,
                    SkillSet,
                    PresentAddress,
                    PresentAddressLine2,
                    Zipcode,
                    State,
                    City,
                    PhoneNumber,
                    PermanentAddress,
                    PermanentAddressLine2,
                    PermanentZipcode,
                    PermanentState,
                    PermanentCity,
                    PermanentNumber
            FROM  candidatedinfo                               
        </cfquery> 
<!---    query of query      --->
        <cfquery name="structquery2" dbtype="query">
            select FirstName,MiddleName from structquery1 
        </cfquery> 
        <cfset variables.structName1={"select1Db":"#structquery1#","select2Db":"#structquery2#"}> 
        <cfset   variables.arrayName=[structquery1,structquery2]>
        <cfreturn  variables.structName1>
    </cffunction>
<!--- suggestion     --->
    <cffunction  name="suggestVal" access="remote"  returnformat="JSON" >
        <cfargument  name="suggestData"  required="true">
        <cfquery name="qallHrDetails" datasource="Employee">
            SELECT TOP 10 Email
            FROM  [Employee].[dbo].[Emp]
            <cfif structKeyExists(arguments, 'suggestData') AND arguments.suggestData NEQ "">
                WHERE Email like <cfqueryparam cfsqltype="cf_sql_varchar" value="%#arguments.suggestData#%" />
            </cfif>
        </cfquery>
       <cfreturn  qallHrDetails>
     </cffunction>

<!---Function for both resend and send otp   --->
    <cffunction  name="OTPemail" access="remote"  returnformat="JSON" >
        <cfargument  name="emailId"  required="true">
            <cfset variables.randomNumber='#randRange(100000,1000000, "SHA1PRNG")#'>
            <cftry> 
            <cfmail to="ram7287808290@gmail.com" from="romanreignsinfoane@gmail.com" subject="smtp test">#variables.randomNumber#</cfmail>
            <cfcatch>
            <cfquery name="qpasscode" datasource="Employee">
                UPDATE [Employee].[dbo].[Emp] 
                SET Passcode =<cfqueryparam cfsqltype="cf_sql_varchar" value="#variables.randomNumber#">
                where Email=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
            </cfquery>
            </cfcatch>
            </cftry>
            <cfset session.otpEmail='#arguments.emailId#'>       
    </cffunction> 
<!---     TIMEOUT FUNCTION   --->
    <cffunction  name="timeOut" access="remote"  returnformat="JSON" >
        <cfargument  name="emailId"  required="false">
             <cfquery name="qtimeOut" datasource="Employee">
                UPDATE [Employee].[dbo].[Emp] 
                SET Passcode =<cfqueryparam cfsqltype="cf_sql_varchar" value="" null="yes">
                where Email=<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#">
            </cfquery>
    </cffunction> 
<!---   demo function for spread sheet    --->
<cffunction  name="spreadsheetData" access="remote"  returnformat="JSON" >
     <cfquery name="qallHrDetails11" datasource="Employee">
        SELECT *
        FROM  [Employee].[dbo].[Emp]
    </cfquery>
<cfreturn qallHrDetails11>
</cffunction>

<!--- dynamic loop for inserting --->
<cffunction  name="dynamic1" access="remote"  returnformat="JSON" >
     <cfargument  name="dynamic"  required="false">
     <cfquery name="demo" datasource="Employee">
          insert into [Employee].[dbo].[Emp](FirstName)
          values(<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.dynamic#">)
    </cfquery>
</cffunction>

<!---browser name  --->
<cffunction  name="browser" access="remote"  returnformat="JSON" >
    <cfargument  name="emailId"  required="true">
    <cfargument  name="browsername"  required="false">
    <cfargument  name="Device_name"  required="false">
    <cfquery name="qbrowser" datasource="Employee">
        UPDATE [Employee].[dbo].[Emp]
            SET Browser =<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.browsername#">,
            DeviceName =<cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.Device_name#">
            WHERE  Email= <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.emailId#"> 
    </cfquery>
</cffunction>
<!--- ajax data for datatable --->
    <cffunction  name="datatable" access="remote"  returnformat="JSON" >
    <cfquery name="qdatatable" datasource="Employee">
        SELECT *
        FROM  [Employee].[dbo].[Emp]
    </cfquery>
<cfreturn qdatatable>
</cffunction>
<!--- ajax data for datatable 1--->
    <cffunction  name="datatable" access="remote"  returnformat="JSON" >
    <cfquery name="qdatatable" datasource="Employee">
        SELECT *
        FROM  [Employee].[dbo].[Emp]
    </cfquery>
<cfreturn qdatatable>
</cffunction>

</cfcomponent>
