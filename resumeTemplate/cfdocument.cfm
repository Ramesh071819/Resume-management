 <cfdocument format="pdf" >      
    <cfdocumentitem type="header" evalatprint="true">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr><td align="right"><cfoutput>#cfdocument.currentsectionpagenumber# of
        #cfdocument.totalsectionpagecount#</cfoutput></td></tr>
        </table> 
    </cfdocumentitem>
    
    <cfdocumentitem type="footer" evalatprint="true">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
    <tr><td align="center"><cfoutput>#cfdocument.currentpagenumber# of
    #cfdocument.totalpagecount#</cfoutput></td></tr>
    </table> 
    </cfdocumentitem>
    
    <cfdocumentsection>
    <h1>Section 1</h1>
    <cfloop from=1 to=50 index="i">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
    </cfloop> 
    </cfdocumentsection>
    
    <cfdocumentsection>
    <h1>Section 2</h1>
    <cfloop from=1 to=50 index="i">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
    </cfloop> 
    </cfdocumentsection>
    
    <cfdocumentsection>
    <h1>Section 3</h1>
    <cfloop from=1 to=50 index="i">
    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<p>
    </cfloop> 
    </cfdocumentsection>
</cfdocument>
