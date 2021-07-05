<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
        <link rel="stylesheet" href="style.css">
        <cfoutput>
        <cfparam name="tasks" default="#arrayNew(1)#" type="Array">
        </cfoutput>
    </head>

    <body>
    <div class="ui inverted segments">
        <div class="page">
        <h1>ToDo List</h1>
        <div id="todoSection">
        <div class="textSection">
        <cfoutput>
        <cfloop array="#session.tasks#" index="index">
        <div class="ui three column grid">
        <div class="column">
            <div class="ui fluid card">
            <div class="content">
                <a class="header">#index#</a>
            </div>
            </div>
            </div>
        </div>
        </cfloop>
        </cfoutput>
        </div>
        </div>
        <cfoutput>
        <cfform action="formAction.cfm" method="post">
        <div id="submitInput">
            <div class="ui fluid inverted icon input">
                <cfinput type="Text" placeholder="Task" name="task">
                <button class="ui inverted button">Submit</button>
            </div>
        </cfform>
        </cfoutput>
        </div>
        <cfform action="clear.cfm" method="post">
            <div class="ui fluid inverted icon input">
                <button class="ui inverted button">Clear</button>
            </div>
        </cfform>
    </div>
    </div>
    </body>
</html>