component {
    this.name = "todo";
    this.sessionManagement = true;

    function onSessionStart() {
        session.tasks=[];
    }

 }