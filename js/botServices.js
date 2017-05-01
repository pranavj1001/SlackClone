var botMessage = "Hey there, I'm a bot.";
var projectDefineSteps = 0;
var issueDefineSteps = 0;
var issueShowLatestSteps = 0;
var issueShowSteps = 0;
var projectNameForIssue = "";
var returnMessage = "";
var dontAllowBotToSendMessage = 0;

function findTheServiceRequired(message, teamName, currrentUsername){

	//console.log("Reached here " + message);

	if((message.toLowerCase().indexOf("what's the time") >= 0) || (message.toLowerCase().indexOf("whats the time") >= 0) || (message.toLowerCase().indexOf("what is the time") >= 0) || (message.toLowerCase().indexOf("what's the time?") >= 0) || (message.toLowerCase().indexOf("whats the time?") >= 0) || (message.toLowerCase().indexOf("what is the time?") >= 0)){

		//console.log("Get Time");

		botMessage = "Current Time is ";
		botMessage += botAction.getTime();

		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueStepsVariable();

	}else if(((message.toLowerCase().indexOf("define a new project") >= 0) || (message.toLowerCase().indexOf("create a new project") >= 0) || (message.toLowerCase().indexOf("create a project") >= 0) || (message.toLowerCase().indexOf("define a project") >= 0)) && (projectDefineSteps == 0)){

		//console.log("Create a new Project");

		botMessage = "Alright, what's the name of the project?";

		projectDefineSteps = 1;

		botAction.initializeIssueStepsVariable();

	}else if(((message.toLowerCase().indexOf("revert project definition") >= 0) || (message.toLowerCase().indexOf("revert project creation") >= 0)) && (projectDefineSteps === 1)){

		//console.log("Rollback Project Declaration");

		botMessage = "No Problem, project definition reverted";

		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if(projectDefineSteps === 1){

		//console.log("Actual, Project Creation started.");

		botMessage = "Ohok, working on it....";

		botAction.defineANewProject(message, teamName);
		
		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueStepsVariable();

	}else if(((message.toLowerCase().indexOf("commit an issue") >= 0) || (message.toLowerCase().indexOf("insert an issue") >= 0) || (message.toLowerCase().indexOf("add an issue") >= 0)) && (issueDefineSteps == 0)){

		//console.log("Commit an issue");

		botMessage = "... To which project?";

		issueDefineSteps = 1;
		//console.log(issueDefineSteps);
		
		botAction.initializeProjectStepsVariable();

	}else if(((message.toLowerCase().indexOf("revert issue definition") >= 0) || (message.toLowerCase().indexOf("revert issue creation") >= 0)) && ((issueDefineSteps === 1) || (issueDefineSteps === 2))){

		//console.log("Rollback Issue Creation");

		dontAllowBotToSendMessage = 0;

		botMessage = "No Problem, issue definition reverted";
		
		botAction.initializeProjectStepsVariable();		
		botAction.initializeIssueStepsVariable();

	}else if(issueDefineSteps == 1){

		//console.log("Checking whether that project exits or not.");

		botMessage = "Ohok, working on it....";

		botAction.preCommitAnIssue(message, teamName, message);

		botAction.initializeProjectStepsVariable();

	}else if(issueDefineSteps == 2){

		//console.log("Final Stage: Commit the issue");

		dontAllowBotToSendMessage = 1;

		botAction.commitAnIssue(message, teamName, currrentUsername, projectNameForIssue);

		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueStepsVariable();

	}else if(message.toLowerCase().indexOf("display the latest issue of") >= 0){

		console.log("Display the latest issue (ProjectName Entered)");
		projectNameForIssue = message.substr(35);
		//console.log(projectNameForIssue);

		botMessage = "Ohok, working on it....";

		botAction.showLatestIssue(teamName, projectNameForIssue);

		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if(message.toLowerCase().indexOf("display the latest issue") >= 0){

		console.log("Display the latest issue (ProjectName Not Entered)");

		botMessage = "... of which project?";

		botAction.showLatestIssue(teamName, message);
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else{

		//console.log("User just wants to see the bot");

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
		//console.log(teamName + " " + projectName);
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=createANewProject",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Success: New Project " + projectName + " is now online!"; 
               		//console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);                 
                }else if(result == "2"){
                	returnMessage = "This Project already exists.";
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                }else{
                	returnMessage = "Failure: Not able to define the Project " + projectName; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
              	}
            }
        });
	},

	preCommitAnIssue: function(projectName, teamName, message){
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=checkForThisTable",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Okay, Now type down the text for new Issue.";
               		//console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		issueDefineSteps = 2;
					projectNameForIssue = message;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	botAction.initializeIssueStepsVariable();
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
              	}
            }
        });
	},

	commitAnIssue: function(issueData, teamName, currrentUsername, projectName){

		var currentDateTimeInISOFormat = new Date(Date.now() - ((new Date()).getTimezoneOffset() * 60000)).toISOString().slice(0, 19).replace('T', ' ');

		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=commitAnIssue",
            data: "teamname=" + teamName + "&projectname=" + projectName + "&issueData=" + issueData + "&username=" + currrentUsername + "&datetime=" + currentDateTimeInISOFormat,
            success: function(result){
            	if(result == "1"){
            		returnMessage = "Success: Issue commited to " + projectName;
               		//console.log(returnMessage);
               		botAction.botMessage(teamName, returnMessage);
               		dontAllowBotToSendMessage = 0;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	dontAllowBotToSendMessage = 0;
                }else{
                	console.log(result);
                	returnMessage = "Failure: Not able to commit the issue to " + projectName; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                	dontAllowBotToSendMessage = 0;
              	}
            }
        });
	},

	showLatestIssue: function(teamName, projectName){
		console.log(projectName);
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=checkForThisTable",
            data: "teamname=" + teamName + "&projectname=" + projectName,
            success: function(result){
            	if(result == "1"){
               		//console.log("Moving Ahead");
               		$.ajax({
			            type: "POST",
			            url: "http://localhost/SlackClone/actions.php?actions=showLatestIssue",
			            data: "teamname=" + teamName + "&projectname=" + projectName,
			            dataType: "json",
			            success: function(result){
			 				//console.log(result);
			 				$.each(result,function(index,item){
				            	returnMessage = "Issue #"+ item.id + "\nDescription: " + item.issuedescription + "\nIssued by: " + item.createdby + "\nDate and Time: " + item.datetime + "\n";
				            });
				            //console.log(returnMessage);
				            botAction.botMessage(teamName, returnMessage);
			            }
			        });               
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.botMessage(teamName, returnMessage);
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
			        console.log("Failure: " + result);
			    }
		    }
		});		
	}

};
