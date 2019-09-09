<cfquery  datasource="Simple">
DELETE FROM menus  WHERE menu_id = '#menuId#';
</cfquery>
<cflocation  url="menu.cfm">
