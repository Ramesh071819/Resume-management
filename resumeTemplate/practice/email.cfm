 <!--- <cfmail to="ram7287808290@gmail.com" from="romanreignsinfoane@gamil.com" subject="hi">hello sai kumar</cfmail>
  <cfpdf action="read" name="ramesh" source="D:\Downloads\9236766.pdf">
  <cfdump var="#ramesh#" />
    <cfpdf action="extracttext" name="ramesh1" source="D:\Downloads\9236766.pdf">
<!---     <cfdump var="#ramesh1#" /> --->
    <cfpdf action="thumbnail" source="D:\Downloads\9236766.pdf" destination="D:\Downloads" overwrite="yes" />
    <cfimage action="read" name="somethingImg"  source="D:\Downloads\9236766_page_13.jpg" format="jpg">
     <cfdump var="#somethingImg#"/>

<!---    <cfpdf action="extractimage"  source="D:\Downloads\9236766.pdf" destination="D:\Downloads" overwrite="yes" /> 
      <img src="cfimage-0.jpg" /><br> --->
      <cfpdf action="extractimage" source="D:\Downloads\file-sample_150kB.pdf"  overwrite="yes" destination="D:\Downloads"/>
<!--- <img src="cfimage-0.jpg" /> --->
<cfpdf action="merge" source="D:\Downloads\9236766.pdf,D:\Downloads\file-sample_150kB.pdf" destination="D:\Downloads\merge.pdf" overwrite="yes" />
<!--- <cfpdf action="deletepages"  source="D:\Downloads\merge.pdf" pages="2-3"/> --->
<cfpdf action="addwatermark" source="D:\Downloads\merge.pdf" image="D:\figma\images\simage1.jpeg" foreground="yes"    overwrite="yes" position="0,170" rotation="45" />
<img src="cfimage-1.jpg" />
<!---  <cfdocument format="pdf">
   <cfoutput>
   Bacon ipsum dolor sit amet sirloin fatback
   </cfoutput>
</cfdocument>  --->
 <cfdocument formattype="pdf" pagetype="letter" marginbottom="2.0" margintop="1.0" marginleft="0.5" marginright="1.5" userpassword="secret123" encryption="128-bit"> 
   <cfoutput>
   Bacon ipsum dolor sit amet sirloin fatback 
   </cfoutput>
</cfdocument> --->

<!---    <cfspreadsheet    
    action="read" 
    src = "D:\Downloads\SampleXLSFile_19kb (1).xls"  
    format = "html"  
    name = "text21"> 
    <cfdump var="#text21#">
     <cfquery name="structquery1" datasource="Resume-Management">             
              SELECT  FirstName,MiddleName,LastName,Email,MobileNumber,AlternateNumber,DateOfBirth,Gender,Qualification,Experience,Nationality,NoticePeriod,CurrentEmployer,CurrentCTC,ExpectedCTC,Department,SkillSet,PresentAddress,PresentAddressLine2,Zipcode,State,City,PhoneNumber,PermanentAddress,PermanentAddressLine2,PermanentZipcode,PermanentState,PermanentCity,PermanentNumber
                FROM  candidatedinfo                               
         </cfquery> 
     <cfdump var="#structquery1#"> --->
<!---      <cfspreadsheet action="write" filename="D:\Downloads\Sample.xls" query="#structquery1#"  
    sheetname="courses" overwrite=true>   --->
<!---   <cfspreadsheet   
    action="write" 
    format = "csv" 
    filename="text21">  ---> 
<!--- <cfmail to="ram7287808290@gmail.com" from="ram7287808290@gmail.com" subject="testing smtp" cc="ram7287808290@gmail.com"> 
<cfmailparam name = "Importance" value = "High">
</cfmail>--->
<!---  <cffile action="Read" 
file="D:\Downloads\file-sample_150kB.pdf"
variable="readText">
 <cfdump var="#readText#"> 
<cfoutput>#readText#</cfoutput>---> 
<cfinclude  template="formatInclude.cfm">
<table>
<tr><td class="re" >1</td></tr>
<tr><td class="re">2</td></tr>
</table>
<script>
$(document).ready(function(){
$('.re').click(function(){
    alert($(this).parent('tr').index()) 
})
});
</script>