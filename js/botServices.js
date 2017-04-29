var botMessage = "Hey there, I'm a bot.";
var projectDefineSteps = 0;
var issueDefineSteps = 0;
var returnMessage = "";

function findTheServiceRequired(message, teamName, currrentUsername){

	//console.log("Reached here " + message);

	if((message.toLowerCase().indexOf("what's the time") >= 0) || (message.toLowerCase().indexOf("whats the time") >= 0) || (message.toLowerCase().indexOf("what is the time") >= 0) || (message.toLowerCase().indexOf("what's the time?") >= 0) || (message.toLowerCase().indexOf("whats the time?") >= 0) || (message.toLowerCase().indexOf("what is the time?") >= 0)){
		//console.log(" Reached here" + message);
		botMessage = "Current Time is ";
		botMessage += botAction.getTime();
	}else if((message.toLowerCase().indexOf("define a new project") >= 0) || (message.toLowerCase().indexOf("create a new project") >= 0) || (message.toLowerCase().indexOf("create a project") >= 0) || (message.toLowerCase().indexOf("define a project") >= 0)){
		//console.log("Create a new Project");
		botMessage = "Alright, what's the name of the project?";
		projectDefineSteps = 1;
	}else if(((message.toLowerCase().indexOf("revert project definition") >= 0) || (message.toLowerCase().indexOf("revert project creation") >= 0)) && (projectDefineSteps === 1)){
		botMessage = "No Problem, project definition reverted";
		projectDefineSteps = 0;
	}else if(projectDefineSteps === 1){
		botMessage = "Ohok, working on it....";
		botAction.defineANewProject(message, teamName);
		projectDefineSteps = 0;
	}else if((message.toLowerCase().indexOf("commit an issue") >= 0) || (message.toLowerCase().indexOf("insert an issue") >= 0)){
		botMessage = "... To which project?";
		issueDefineSteps = 2;
	}else if(issueDefineSteps === 2){
		botAction.commitAnIssue(message, teamName);
		issueDefineSteps = 0;
	}else{
		botMessage = "Hey there, " + currrentUsername + " How can I help you?";
		projectDefineSteps = 0;
		issueDefineSteps = 0;
	}

	return;

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

	commitAnIssue: function(projectName, teamName){
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=commitAnIssue",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Success: Issue commited to " + projectName;
               		console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		return returnMessage;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exists.";
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
