<cfoutput>
  <!---   <cfif StructKeyExists(form,upFile)> 
    <cffile  action="upload"   nameconflict='Overwrite' filefield="upFile" destination='D:\Coldfusion2021\cfusion\wwwroot\resumeManagement\resumeTemplate\upLoadFile' />
    <cflocation url ="../resumeTemplate/hrlogin.cfm">
  </cfif> --->
  <cfif isDefined('form.file_input1')>
    <cffile  action="upload"   nameconflict='Overwrite' filefield="file_input1" destination='D:\Coldfusion2021\cfusion\wwwroot\resumeManagement\resumeTemplate\upLoadFile'/> 
    <cfdump var="#cffile#">
     <cflocation url ="../resumeTemplate/hrlogin.cfm">  
  </cfif>
  <cfif isDefined('URL.resendEmail')>
    <cfset structdelete(session,'otpEmail')>
    <cflocation url ="../resumeTemplate/index.cfm">
  </cfif>
  <!---   <cflocation url ="../resumeTemplate/hrlogin.cfm">  --->
</cfoutput> 


Error Executing Database Query. [Macromedia][SQLServer JDBC Driver][SQLServer]Violation of UNIQUE KEY constraint 'UQ_GUIDFilename'. Cannot insert duplicate key in object 'dbo.FileUpload'. The duplicate key value is (internalTransfer_78B6E9F5-04DB-8ECD-8B91-31DF88555B07.pdf). <br>The error occurred on line 7463.<br><br>This error is called from:<br> 1 C:\inetpub\planmemberpartners\RegBI\Objects\ifpobjectDAO.cfc line 7463<br> 2 C:\inetpub\planmemberpartners\RegBI\Objects\ifpobject.cfc line 2072<br> 3 C:\inetpub\planmemberpartners\RegBI\templates\internalTransfer_pdf.cfm line 1671<br> 4 C:\inetpub\planmemberpartners\RegBI\templates\internalTransfer_pdf.cfm line 1<br> 5 C:\inetpub\planmemberpartners\RegBI\Objects\ifpobject.cfc line 4727<br>
 6 C:\inetpub\planmemberpartners\RegBI\Objects\ifpobject.cfc line 4707<br>