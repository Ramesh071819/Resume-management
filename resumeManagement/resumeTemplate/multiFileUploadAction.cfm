<!---<cfdump var="#form.upfile#">
<cfdump var="#form#">--->

<!--- <cfset application.uploadedfilepath="#result1.SERVERDIRECTORY#">  

<cffile  action="uploadAll"  result="res1" nameconflict='Overwrite' filefield="upfile" destination='D:\Coldfusion2021\cfusion\wwwroot\resumeManagement\resumeTemplate\upLoadFile' />

<cfloop array="#res1#" index="FileNo" item="res2">

<cfoutput>#res1[FileNo].CLIENTFILE#</cfoutput>--->

<!--- <cflocation url="D:\Coldfusion2021\cfusion\runtime\work\Catalina\localhost\tmp\neotmp7829474566041438744.tmp"> 
    <cfquery name="qhrAdminDetails" datasource="Resume-Management">
             insert into candidatefiles(FilePath,candidateId)
             values('#res1[FileNo].CLIENTFILE#',40)
        </cfquery>
</cfloop>--->