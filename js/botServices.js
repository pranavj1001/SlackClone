var botMessage = "Hey there, I'm a bot.";
var projectDefineSteps = 0;
var issueDefineSteps = 0;
var issueShowLatestSteps = 0;
var issueShowSteps = 0;
var issueId = 0;
var projectNameForIssue = "";
var returnMessage = "";
var dontAllowBotToSendMessage = 0;
var dontSaveThisUserMessage = 0;
var bot = "bot";

var baseUrl = "https://sandbox-healthservice.priaid.ch/";
var token = "?"; //Type your token (APIMedic) here 
var endUrl = "&language=en-gb&format=json";

var doctorId;

function findTheServiceRequired(message, teamName, currrentUsername){

	dontAllowBotToSendMessage = 0;
	dontSaveThisUserMessage = 0;

	//console.log("Reached here " + message);

	if(message.toLowerCase().indexOf("revert last command") >= 0){

		dontAllowBotToSendMessage = 0;

		botMessage = "No Problem, reverting the last command";

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("humor me") >= 0) || (message.toLowerCase().indexOf("have any joke") >= 0) || (message.toLowerCase().indexOf("joke of the moment") >= 0) || (message.toLowerCase().indexOf("make me laugh") >= 0) || (message.toLowerCase().indexOf("a joke for me") >= 0)){

		//console.log("Jokes");
		dontAllowBotToSendMessage = 1;
		dontSaveThisUserMessage = 1;

		botAction.saveMessage(teamName, message, currrentUsername);
		botAction.saveMessage(teamName, "Picking a good one for ya", bot);

		botAction.getJokes(teamName);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("what's the time") >= 0) || (message.toLowerCase().indexOf("whats the time") >= 0) || (message.toLowerCase().indexOf("what is the time") >= 0) || (message.toLowerCase().indexOf("what's the time?") >= 0) || (message.toLowerCase().indexOf("whats the time?") >= 0) || (message.toLowerCase().indexOf("what is the time?") >= 0)){

		//console.log("Get Time");

		botMessage = "Current Time is ";
		botMessage += botAction.getTime();

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("what's the date") >= 0) || (message.toLowerCase().indexOf("whats the date") >= 0) || (message.toLowerCase().indexOf("what is the date") >= 0) || (message.toLowerCase().indexOf("what's the date?") >= 0) || (message.toLowerCase().indexOf("whats the date?") >= 0) || (message.toLowerCase().indexOf("what is the date?") >= 0)){

		//console.log("Get Time");

		botMessage = "Current Date is ";
		botMessage += botAction.getDate();

		botAction.initializeAllVariables();

	}else if(((message.toLowerCase().indexOf("define a new project") >= 0) || (message.toLowerCase().indexOf("create a new project") >= 0) || (message.toLowerCase().indexOf("create a project") >= 0) || (message.toLowerCase().indexOf("define a project") >= 0)) && (projectDefineSteps == 0)){

		//console.log("Create a new Project");

		botMessage = "Alright, what's the name of the project?";

		projectDefineSteps = 1;

		botAction.initializeIssueStepsVariable();
		botAction.initializeIssueShowLatestStepsVariable();
		botAction.initializeIssueShowStepsVariable();

	}else if(((message.toLowerCase().indexOf("revert project definition") >= 0) || (message.toLowerCase().indexOf("revert project creation") >= 0)) && (projectDefineSteps === 1)){

		//console.log("Rollback Project Declaration");

		botMessage = "No Problem, project definition reverted";

		botAction.initializeAllVariables();

	}else if(projectDefineSteps === 1){

		//console.log("Actual, Project Creation started.");

		botMessage = "Ohok, working on it....";

		botAction.defineANewProject(message, teamName);
		
		botAction.initializeAllVariables();

	}else if(((message.toLowerCase().indexOf("commit an issue") >= 0) || (message.toLowerCase().indexOf("insert an issue") >= 0) || (message.toLowerCase().indexOf("add an issue") >= 0)) && (issueDefineSteps == 0)){

		//console.log("Commit an issue");

		botMessage = "... To which project?";

		issueDefineSteps = 1;
		//console.log(issueDefineSteps);
		
		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueShowLatestStepsVariable();
		botAction.initializeIssueShowStepsVariable();

	}else if(((message.toLowerCase().indexOf("revert issue definition") >= 0) || (message.toLowerCase().indexOf("revert issue creation") >= 0)) && ((issueDefineSteps === 1) || (issueDefineSteps === 2))){

		//console.log("Rollback Issue Creation");

		dontAllowBotToSendMessage = 0;

		botMessage = "No Problem, issue definition reverted";
		
		botAction.initializeAllVariables();

	}else if(issueDefineSteps == 1){

		//console.log("Checking whether that project exits or not.");

		botMessage = "Ohok, working on it....";

		botAction.preCommitAnIssue(message, teamName, message);

		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueShowLatestStepsVariable();
		botAction.initializeIssueStepsVariable();
		botAction.initializeIssueShowStepsVariable();

	}else if(issueDefineSteps == 2){

		//console.log("Final Stage: Commit the issue");

		dontAllowBotToSendMessage = 1;

		botAction.commitAnIssue(message, teamName, currrentUsername, projectNameForIssue);

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("revert issue revealing") >= 0){

		dontAllowBotToSendMessage = 0;

		botMessage = "No Problem, not revealing the issue";

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("display the latest issue of") >= 0){

		//console.log("Display the latest issue (ProjectName Entered)");
		projectNameForIssue = message.substr(35);
		//console.log(projectNameForIssue);

		botMessage = "Ohok, working on it....";

		botAction.showLatestIssue(teamName, projectNameForIssue);

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("display the latest commit of") >= 0){

		//console.log("Display the latest issue (ProjectName Entered)");
		projectNameForIssue = message.substr(36);
		//console.log(projectNameForIssue);

		botMessage = "Ohok, working on it....";

		botAction.showLatestIssue(teamName, projectNameForIssue);

		botAction.initializeAllVariables();

	}else if(((message.toLowerCase().indexOf("display the latest issue") >= 0) || (message.toLowerCase().indexOf("display the latest commit") >= 0) ) && (issueShowLatestSteps == 0)){

		//console.log("Display the latest issue (ProjectName Not Entered)");

		botMessage = "... of which project?";

		issueShowLatestSteps = 1;
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();
		botAction.initializeIssueShowStepsVariable();

	}else if(issueShowLatestSteps == 1){

		dontAllowBotToSendMessage = 1;

		botAction.showLatestIssue(teamName, message);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("display the issue whose id = ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(36);
		issueId.trim();
		//console.log(issueId);

		issueShowSteps = 1;
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if((message.toLowerCase().indexOf("display the commit whose id = ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(37);
		issueId.trim();
		//console.log(issueId);

		issueShowSteps = 1;
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if((message.toLowerCase().indexOf("display the commit whose id equals ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(42);
		issueId.trim();
		//console.log(issueId);

		issueShowSteps = 1;
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if((message.toLowerCase().indexOf("display the issue whose id equals ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(41);
		issueId.trim();
		//console.log(issueId);

		issueShowSteps = 1;
		
		botAction.initializeIssueStepsVariable();
		botAction.initializeProjectStepsVariable();

	}else if((message.toLowerCase().indexOf("Im feeling ") >= 0) || (message.toLowerCase().indexOf("I'm feeling ") >= 0) || (message.toLowerCase().indexOf("I am feeling ") >= 0) || (message.toLowerCase().indexOf("Im having ") >= 0) || (message.toLowerCase().indexOf("I am having ") >= 0) || (message.toLowerCase().indexOf("I'm having ") >= 0) || (message.toLowerCase().indexOf("I have ") >= 0)){

		console.log("Doctor Bot (Symptoms)");

		botDoctor.assignSymptomsID();

		botAction.initializeAllVariables();

	}else if(issueShowSteps == 1){

		dontAllowBotToSendMessage = 1;

		botAction.showIssue(teamName, message, issueId);

		botAction.initializeAllVariables();

	}else{

		//console.log("User just wants to see the bot");

		botMessage = "Hey there, " + currrentUsername + " How can I help you?";

		botAction.initializeAllVariables();

	}

};

var botAction = {

	getTime: function(){ 
		return new Date().toLocaleTimeString();
	},

	getDate: function(){ 
		return new Date().toLocaleDateString();
	},

	getJokes: function(teamName){

		var jokes = [
			"Did you hear about the guy whose whole left side was cut off? He\'s all right now.",
			"I'm reading a book about anti-gravity. It's impossible to put down.",
			"I wondered why the baseball was getting bigger. Then it hit me.",
			"It's not that the man did not know how to juggle, he just didn't have the balls to do it.",
			"I'm glad I know sign language, it's pretty handy.",
			"My friend's bakery burned down last night. Now his business is toast.",
			"Why did the cookie cry? It was feeling crumby.",
			"I used to be a banker, but I lost interest.",
			"A drum and a symbol fall off a cliff",
			"Why do seagulls fly over the sea? Because they aren't bay-gulls!",
			"Why did the fireman wear red, white, and blue suspenders? To hold his pants up.",
			"Why didn't the crab share his food? Because crabs are territorial animals, that don't share anything.",
			"Why was the javascript developer sad? Because he didn't Node how to Express himself.",
			"What do I look like? A JOKE MACHINE!?",
			"How did the hipster burn the roof of his mouth? He ate the pizza before it was cool.",
			"Why is it hard to make puns for kleptomaniacs? They are always taking things literally.",
			"Why do mermaid wear sea-shells? Because b-shells are too small.",
			"I'm a humorless, cold hearted, machine.",
			"Two fish in a tank. One looks to the other and says 'Can you even drive this thing???'",
			"Two fish swim down a river, and hit a wall. One says: 'Dam!'",
			"What's funnier than a monkey dancing with an elephant? Two monkeys dancing with an elephant.",
			"How did Darth Vader know what Luke was getting for Christmas? He felt his presents.",
			"What's red and bad for your teeth? A Brick.",
			"What's orange and sounds like a parrot? A Carrot.",
			"What do you call a cow with no legs? Ground beef",
			"Two guys walk into a bar. You'd think the second one would have noticed.",
			"What is a centipedes's favorite Beatle song?  I want to hold your hand, hand, hand, hand...",
			"What do you call a chicken crossing the road? Poultry in moton. ",
			"Did you hear about the Mexican train killer?  He had locomotives",
			"What do you call a fake noodle?  An impasta",
			"How many tickles does it take to tickle an octupus? Ten-tickles!", 
			"At the rate law schools are turning them out, by 2050 there will be more lawyers than humans."
		];

		var randomJoke = jokes[Math.floor(Math.random() * jokes.length)];

		botAction.saveMessage(teamName, randomJoke, bot);

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
               		botAction.saveMessage(teamName, returnMessage, bot);                 
                }else if(result == "2"){
                	returnMessage = "This Project already exists.";
                	//console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
                }else{
                	returnMessage = "Failure: Not able to define the Project " + projectName; 
                	console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
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
               		botAction.saveMessage(teamName, returnMessage, bot);
               		issueDefineSteps = 2;
					projectNameForIssue = message;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
                	botAction.initializeIssueStepsVariable();
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
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
               		botAction.saveMessage(teamName, returnMessage, bot);
               		dontAllowBotToSendMessage = 0;                 
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
                	dontAllowBotToSendMessage = 0;
                }else{
                	console.log(result);
                	returnMessage = "Failure: Not able to commit the issue to " + projectName; 
                	console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
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
				            botAction.saveMessage(teamName, returnMessage, bot);
			            }
			        });               
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
              	}
            }
        });
	},

	showIssue: function(teamName, projectName, issueId){
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
			            url: "http://localhost/SlackClone/actions.php?actions=showIssue",
			            data: "teamname=" + teamName + "&projectname=" + projectName + "&issueId=" + issueId,
			            dataType: "json",
			            success: function(result){
			 				//console.log(result);
			 				$.each(result,function(index,item){
				            	returnMessage = "Issue #"+ item.id + "\nDescription: " + item.issuedescription + "\nIssued by: " + item.createdby + "\nDate and Time: " + item.datetime + "\n";
				            });
				            //console.log(returnMessage);
				            botAction.saveMessage(teamName, returnMessage, bot);
			            }
			        });               
                }else if(result == "2"){
                	returnMessage = "This Project doesn't exist. Want to create a new project with this name: '" + projectName + "' ? Then just type 'OK Bot create a new project'";
                	//console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
                }else{
                	returnMessage = "Failure: There's some problem with our servers please try again later."; 
                	console.log(returnMessage);
                	botAction.saveMessage(teamName, returnMessage, bot);
              	}
            }
        });
	},

	initializeIssueShowStepsVariable: function(){
		issueShowSteps = 0;
	},

	initializeIssueStepsVariable: function(){
		issueDefineSteps = 0;
	},

	initializeProjectStepsVariable: function(){
		projectDefineSteps = 0;
	},

	initializeIssueShowLatestStepsVariable: function(){
		issueShowLatestSteps = 0;
	},

	initializeAllVariables: function(){
		issueShowSteps = 0;
		issueDefineSteps = 0;
		projectDefineSteps = 0;
		issueShowLatestSteps = 0;
	},

	saveMessage: function(teamName, returnMessage, username){
		$.ajax({
		    type: "POST",
		    url: "http://localhost/SlackClone/actions.php?actions=saveMessage",
		    data:"teamname=" + teamName + "&sender=" + username + "&message=" + returnMessage,
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

var botDoctor = {

	assignSymptomsID: function(symptom){

		if(symptom.toLowerCase().indexOf("abdominal pain")){
			doctorId = 10;
		}else if(symptom.toLowerCase().indexOf("anxiety")){
			doctorId = 238;
		}else if(symptom.toLowerCase().indexOf("back pain")){
			doctorId = 104;
		}else if(symptom.toLowerCase().indexOf("burning eyes")){
			doctorId = 75;
		}else if(symptom.toLowerCase().indexOf("burning in the throat")){
			doctorId = 46;
		}else if(symptom.toLowerCase().indexOf("cheek swelling")){
			doctorId = 170;
		}else if(symptom.toLowerCase().indexOf("chest pain")){
			doctorId = 17;
		}else if(symptom.toLowerCase().indexOf("chest tightness")){
			doctorId = 31;
		}else if(symptom.toLowerCase().indexOf("chills")){
			doctorId = 175;
		}else if(symptom.toLowerCase().indexOf("cold sweats")){
			doctorId = 139;
		}else if(symptom.toLowerCase().indexOf("cough")){
			doctorId = 15;
		}else if(symptom.toLowerCase().indexOf("dizziness")){
			doctorId = 207;
		}else if(symptom.toLowerCase().indexOf("drooping eyelid")){
			doctorId = 244;
		}else if(symptom.toLowerCase().indexOf("dry eyes")){
			doctorId = 273;
		}else if(symptom.toLowerCase().indexOf("earache")){
			doctorId = 87;
		}else if(symptom.toLowerCase().indexOf("early satiety")){
			doctorId = 92;
		}else if(symptom.toLowerCase().indexOf("eye pain")){
			doctorId = 287;
		}else if(symptom.toLowerCase().indexOf("eye redness")){
			doctorId = 33;
		}else if(symptom.toLowerCase().indexOf("fast, deepened breathing")){
			doctorId = 153;
		}else if(symptom.toLowerCase().indexOf("feeling of foreign body in the eye")){
			doctorId = 76;
		}else if(symptom.toLowerCase().indexOf("fever")){
			doctorId = 11;
		}else if(symptom.toLowerCase().indexOf("going black before the eyes")){
			doctorId = 57;
		}else if(symptom.toLowerCase().indexOf("headache")){
			doctorId = 9;
		}else if(symptom.toLowerCase().indexOf("heartburn")){
			doctorId = 45;
		}else if(symptom.toLowerCase().indexOf("hiccups")){
			doctorId = 122;
		}else if(symptom.toLowerCase().indexOf("hot flushes")){
			doctorId = 149;
		}else if(symptom.toLowerCase().indexOf("increased thirst")){
			doctorId = 40;
		}else if(symptom.toLowerCase().indexOf("itching eyes")){
			doctorId = 73;
		}else if(symptom.toLowerCase().indexOf("itching in the nose")){
			doctorId = 96;
		}else if(symptom.toLowerCase().indexOf("lip swelling")){
			doctorId = 35;
		}else if(symptom.toLowerCase().indexOf("memory gap")){
			doctorId = 235;
		}else if(symptom.toLowerCase().indexOf("menstruation disorder")){
			doctorId = 112;
		}else if(symptom.toLowerCase().indexOf("missed period")){
			doctorId = 123;
		}else{
			//default
		}

	}

};

var botDoctorURL = {

	loadSymptoms: function(){ 
		return baseUrl + 'symptoms' + token + endUrl;
	},
	
	loadIssues: function(){ 
		return baseUrl + 'issues' + endUrl;
	},
	
	loadIssueInfo: function(){ 
		return baseUrl + 'issues/' + doctorId + '/info' + token + endUrl;
	},

	loadDiagnosis: function(){ 
		return baseUrl + 'diagnosis' + token + endUrl; 
	},

	loadSpecialisations: function(){ 
		return baseUrl + 'diagnosis/specialisations' + token + endUrl; 
	},

	loadBodyLocations: function(){ 
		return baseUrl + 'body/locations' + token + endUrl;
	},

	loadBodySublocations: function() { 
		return baseUrl + 'body/locations/' + doctorId + token + endUrl;
	}	

};
