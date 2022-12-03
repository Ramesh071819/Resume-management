<!--- <cfquery name="qallHrDetails" datasource="practiceDB">
--      select 
--       [Customer_Id]
-- 	  from [firstdatabase].[dbo].[Orders]
-- </cfquery>
-- <cfdump var='#qallHrDetails#'>

--  <cfloop query='qallHrDetails' group = 'CUSTOMER_ID'>
--     <cfoutput>#qallHrDetails.Customer_Id#</cfoutput>
-- </cfloop>--->
<cfquery name="qallHrDetails" datasource="practiceDB">
ALTER TRIGGER  [dbo].[temptable1]
   ON  [firstdatabase].[dbo].[tempTable]
  after insert
AS 
BEGIN
	
	declare @id int
	declare @item varchar(50)
	declare @rate varchar(50)

	select @id =   [tempTable].id  from inserted temptable
	select @item =   [tempTable].[item]  from inserted temptable
	select @rate =   [tempTable].[rate]  from inserted temptable

    -- Insert statements for trigger here


	if(@id > 100)
		insert into temptable(id,item,rate)
		values(@id,@item,@rate)
	else
	select * from [firstdatabase].[dbo].[tempTable]
END
</cfquery>

<cfquery name="qallHrDetails1" datasource="practiceDB">
	insert into [firstdatabase].[dbo].[tempTable](id,item,rate)
	values(22,'ewrwer',23434)
</CFQUERY>

<cfquery name="qallHrDetails2" datasource="practiceDB">
	select * from [firstdatabase].[dbo].[tempTable]
</CFQUERY>

<cfdump var ='#qallHrDetails1#'>

<cfdump var ='#qallHrDetails2#'>