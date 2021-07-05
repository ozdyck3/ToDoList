<cfif structKeyExists(form, 'fieldnames') AND structKeyExists(form, 'task')>
    <cfoutput>
        <cfset task = #form.task#>
        <cfif task EQ "">
            <cfset session.tasks = []>
        <cflocation url="index.cfm" addtoken="false" />
        </cfif>
        <cfscript>
            ArrayAppend(session.tasks,task,true)
        </cfscript>
        <cflocation url="index.cfm" addtoken="false" />
    </cfoutput>
</cfif>