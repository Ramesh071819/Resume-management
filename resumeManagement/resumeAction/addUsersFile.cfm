<cfoutput>
    <cfif isDefined('form.file_input')>  
        <cffile  action="uploadAll"  result="res1" nameconflict='Overwrite' filefield="file_input" destination='D:\Coldfusion2021\cfusion\wwwroot\resumeManagement\resumeTemplate\upLoadFile' /> 
        <cfloop array="#res1#" index="FileNo" item="res2">
            <cfoutput>#res1[FileNo].CLIENTFILE#</cfoutput>
            <cfset filepathname1="C:resumeTemplate/upLoadFile/"& #res1[FileNo].CLIENTFILE#>
            <cfoutput>#filepathname1#</cfoutput>
            <cfquery name="qhrAdminDetails" datasource="ResumeManagementSql">
            insert into [Resumemgnt].[dbo].[Resume](FilePath,CandidateId,FileName,EmpId,Dates)
            values(
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#filepathname1#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#session.multifileID#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="#res1[FileNo].CLIENTFILE#">,
                    <cfqueryparam cfsqltype="cf_sql_varchar" value="3">,
                    getdate()
                    )
            </cfquery>
        </cfloop>
        <cflocation url ="../resumeTemplate/hrlogin.cfm">
    </cfif>
</cfoutput>