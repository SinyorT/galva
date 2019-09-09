
<cfquery  datasource="Simple">
DELETE FROM news  WHERE n_id = '#nId#';
</cfquery>
<cflocation  url="news.cfm">