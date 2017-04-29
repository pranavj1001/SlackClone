var botMessage = "Hey there, I'm a bot.";
var projectDefineSteps = 0;
var issueDefineSteps = 0;
var projectNameForIssue = "";
var returnMessage = "";

function findTheServiceRequired(message, teamName, currrentUsername){

	//console.log("Reached here " + message);

	if((message.toLowerCase().indexOf("what's the time") >= 0) || (message.toLowerCase().indexOf("whats the time") >= 0) || (message.toLowerCase().indexOf("what is the time") >= 0) || (message.toLowerCase().indexOf("what's the time?") >= 0) || (message.toLowerCase().indexOf("whats the time?") >= 0) || (message.toLowerCase().indexOf("what is the time?") >= 0)){
		//console.log(" Reached here" + message);
		botMessage = "Current Time is ";
		botMessage += botAction.getTime();
		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueStepsVariable();
	}else if((message.toLowerCase().indexOf("define a new project") >= 0) || (message.toLowerCase().indexOf("create a new project") >= 0) || (message.toLowerCase().indexOf("create a project") >= 0) || (message.toLowerCase().indexOf("define a project") >= 0)){
		//console.log("Create a new Project");
		botMessage = "Alright, what's the name of the project?";
		projectDefineSteps = 1;
		botAction.initializeIssueStepsVariable();
	}else if(((message.toLowerCase().indexOf("revert project definition") >= 0) || (message.toLowerCase().indexOf("revert project creation") >= 0)) && (projectDefineSteps === 1)){
		botMessage = "No Problem, project definition reverted";
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();
	}else if(projectDefineSteps === 1){
		botMessage = "Ohok, working on it....";
		botAction.defineANewProject(message, teamName);
		botAction.initializeProjectStepsVariable = 0;
	}else if((message.toLowerCase().indexOf("commit an issue") >= 0) || (message.toLowerCase().indexOf("insert an issue") >= 0)){
		botMessage = "... To which project?";
		issueDefineSteps = 1;
		botAction.initializeProjectStepsVariable();
	}else if(issueDefineSteps === 1){
		botAction.preCommitAnIssue(message, teamName);
		issueDefineSteps = 2;
		botAction.initializeProjectStepsVariable();
	}else if(issueDefineSteps === 2){
		botMessage = "Alright, type down the text for the Issue.";
		botAction.commitAnIssue(message, teamName, currrentUsername);
		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueStepsVariable();
	}else if(((message.toLowerCase().indexOf("revert issue definition") >= 0) || (message.toLowerCase().indexOf("revert issue creation") >= 0)) && (issueDefineSteps === 1)){
		botMessage = "No Problem, issue definition reverted";
		botAction.initializeProjectStepsVariable();		
		botAction.initializeIssueStepsVariable();
	}else{
		botMessage = "Hey there, " + currrentUsername + " How can I help you?";
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();
	}

};

var botAction = {

	getTime: function(){ 
		return new Date().toLocaleTimeString();
	},
	
	defineANewProject: function(projectName, teamName){
		console.log(teamName + " " + projectName);
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=createANewProject",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Success: New Project " + projectName + " is now online!"; 
               		//console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		return returnMessage;                 
                }else if(result == "2"){
                	returnMessage = "This Project already exists.";
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
                }else{
                	returnMessage = "Failure: Not able to define the Project " + projectName; 
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
              	}
            }
        });
	},

	preCommitAnIssue: function(projectName, teamName){
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=preCommitAnIssue",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Okay, Now type down the text for new Issue.";
               		console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		return returnMessage;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist.";
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
              	}
            }
        });
	},

	commitAnIssue: function(projectName, teamName, currrentUsername){
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=commitAnIssue",
            data: "teamname=" + teamName + "&projectname=" + projectName + "&username=" + currrentUsername,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Success: Issue commited to " + projectName;
               		console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		return returnMessage;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist.";
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
                }else{
                	returnMessage = "Failure: Not able to commit the issue to " + projectName; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	return returnMessage;
              	}
            }
        });
	},

	initializeIssueStepsVariable: function(){
		issueDefineSteps = 0;
	},

	initializeProjectStepsVariable: function(){
		projectDefineSteps = 0;
	},

	botMessage: function(teamName, returnMessage){
		$.ajax({
		    type: "POST",
		    url: "http://localhost/SlackClone/actions.php?actions=saveMessage",
		    data:"teamname=" + teamName + "&sender=bot&message=" + returnMessage,
		    success: function(result){
			    if(result == "1"){
			    	//console.log("Success");
			    }else{
			        console.log("Failure");
			    }
		    }
		});		
	}

};
