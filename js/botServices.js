var botMessage = "Hey there, I'm a bot.";
var projectDefineSteps = 0;

function findTheServiceRequired(message){

	//console.log(" Reached here" + message);

	if((message.toLowerCase().indexOf("what's the time") >= 0) || (message.toLowerCase().indexOf("whats the time") >= 0) || (message.toLowerCase().indexOf("what is the time") >= 0) || (message.toLowerCase().indexOf("what's the time?") >= 0) || (message.toLowerCase().indexOf("whats the time?") >= 0) || (message.toLowerCase().indexOf("what is the time?") >= 0)){
		//console.log(" Reached here" + message);
		botMessage = "Current Time is ";
		botMessage += botAction.getTime();
	}else if((message.toLowerCase().indexOf("define a new project") >= 0)){
		console.log("Create a new Project");
		botMessage = "Alright, what's the name of the project?";
		projectDefineSteps = 1;
	}else if(projectDefineSteps){
		botAction.defineANewProject();
		projectDefineSteps = 0;
	}else{
		botMessage = "Hey there, I'm a bot.";
	}

};

var botAction = {

	getTime: function(){ 
		return new Date().toLocaleTimeString();
	}
	
	defineANewProject: function(){
		//ajax call to create a new table for each project
	}

};
