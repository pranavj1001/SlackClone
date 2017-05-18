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
var stockCompanyPause;

var baseUrl = "https://sandbox-healthservice.priaid.ch/";
var token = "?"; //Type your token (APIMedic) here 
var endUrl = "&language=en-gb&format=json";

var movieBaseURL = "https://api.themoviedb.org/3/";
var apiKeyTMDb = ""; //Type your api key (TMDb) here

var doctorId;

var stockCompanyName = "";

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

		botAction.initializeAllVariables();

		projectDefineSteps = 1;

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

		botAction.initializeAllVariables();

		issueDefineSteps = 1;
		//console.log(issueDefineSteps);

	}else if(((message.toLowerCase().indexOf("revert issue definition") >= 0) || (message.toLowerCase().indexOf("revert issue creation") >= 0)) && ((issueDefineSteps === 1) || (issueDefineSteps === 2))){

		//console.log("Rollback Issue Creation");

		dontAllowBotToSendMessage = 0;

		botMessage = "No Problem, issue definition reverted";
		
		botAction.initializeAllVariables();

	}else if(issueDefineSteps == 1){

		//console.log("Checking whether that project exits or not.");

		botMessage = "Ohok, working on it....";

		botAction.initializeAllVariables();

		botAction.preCommitAnIssue(message, teamName, message);

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

		botAction.initializeAllVariables();

		issueShowLatestSteps = 1;

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

		botAction.initializeAllVariables();

		issueShowSteps = 1;

	}else if((message.toLowerCase().indexOf("display the commit whose id = ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(37);
		issueId.trim();
		//console.log(issueId);

		botAction.initializeAllVariables();

		issueShowSteps = 1;

	}else if((message.toLowerCase().indexOf("display the commit whose id equals ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(42);
		issueId.trim();
		//console.log(issueId);

		botAction.initializeAllVariables();

		issueShowSteps = 1;

	}else if((message.toLowerCase().indexOf("display the issue whose id equals ") >= 0) && (issueShowSteps == 0)){

		//console.log("Display the issue (ID Entered)");

		botMessage = "... of which project?";

		issueId = message.substr(41);
		issueId.trim();
		//console.log(issueId);

		botAction.initializeAllVariables();

		issueShowSteps = 1;

	}else if(issueShowSteps == 1){

		dontAllowBotToSendMessage = 1;

		botAction.showIssue(teamName, message, issueId);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("Im feeling ") >= 0) || (message.toLowerCase().indexOf("I'm feeling ") >= 0) || (message.toLowerCase().indexOf("I am feeling ") >= 0) || (message.toLowerCase().indexOf("Im having ") >= 0) || (message.toLowerCase().indexOf("I am having ") >= 0) || (message.toLowerCase().indexOf("I'm having ") >= 0) || (message.toLowerCase().indexOf("I have ") >= 0)){

		console.log("Doctor Bot (Symptoms)");

		dontAllowBotToSendMessage = 1;

		botDoctor.assignSymptomsID(message);

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("display current popular movies from the year ") >= 0){

		//console.log("Movie Bot (Year)");

		var year = message.substr(52);
		year.trim();
		console.log(year);
		
		botMessage = "Ohok, fetching movie details......";

		botMovie.fetchDetailsFromTMDb(teamName, 1, year);

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("display the current popular movies from the year ") >= 0){

		//console.log("Movie Bot (Year)");

		var year = message.substr(56);
		year.trim();
		console.log(year);
		
		botMessage = "Ohok, fetching movie details......";

		botMovie.fetchDetailsFromTMDb(teamName, 1, year);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("display current popular movies") >= 0) || (message.toLowerCase().indexOf("display the current popular movies") >= 0) || (message.toLowerCase().indexOf("show me the current popular movies") >= 0) || (message.toLowerCase().indexOf("show me current popular movies") >= 0)){

		//console.log("Movie Bot");
		
		botMessage = "Ohok, fetching movie details......";

		botMovie.fetchDetailsFromTMDb(teamName, 0, 0000);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("display current popular tv shows") >= 0) || (message.toLowerCase().indexOf("display the current popular tv shows") >= 0) || (message.toLowerCase().indexOf("show me the current popular tv shows") >= 0) || (message.toLowerCase().indexOf("show me current popular tv shows") >= 0)){

		//console.log("Movie Bot");
		
		botMessage = "Ohok, fetching TV Shows details......";

		botMovie.fetchDetailsFromTMDb(teamName, 2, 0000);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("display current top rated tv shows") >= 0) || (message.toLowerCase().indexOf("display the current top rated tv shows") >= 0) || (message.toLowerCase().indexOf("show me the current top rated tv shows") >= 0) || (message.toLowerCase().indexOf("show me current top rated tv shows") >= 0)){

		//console.log("Movie Bot");
		
		botMessage = "Ohok, fetching TV Shows details......";

		botMovie.fetchDetailsFromTMDb(teamName, 3, 0000);

		botAction.initializeAllVariables();

	}else if((message.toLowerCase().indexOf("show me stock related info about a company") >= 0) && (stockCompanyPause == 0) ){

		console.log("Stock Bot (Company Name Not Mentioned)");

		botMessage = "About which company?";

		botAction.initializeAllVariables();

		stockCompanyPause = 1;

	}else if(stockCompanyPause){

		console.log("Stock Bot (Get Company Name)");

		botMessage = "About which company?";

		botStocks.getCompanyInfo(message, teamName);

		botAction.initializeAllVariables();

	}else if(message.toLowerCase().indexOf("show me stock related info about ") >= 0){

		console.log("Stock Bot (Company Name Mentioned)");

		botMessage = "Ohok, Working on it......";

		stockCompanyName = message.substr(40);
		stockCompanyName.trim();
		console.log(stockCompanyName);

		botStocks.getCompanyInfo(stockCompanyName, teamName);

		botAction.initializeAllVariables();

	}else{

		//console.log("User just wants to see the bot");

		botMessage = "Hey there, " + currrentUsername + " How can I help you? You may have typed the wrong command. Follow the manual for help.";

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

		var currentDateTimeInISOFormat = new Date(Date.now() - ((new Date()).getTimezoneOffset() * 60000)).toISOString().slice(0, 19).replace('T', ' ');

		//console.log(teamName + " " + projectName);
		$.ajax({
            type: "POST",
            url: "http://localhost/SlackClone/actions.php?actions=createANewProject",
            data: "teamname=" + teamName + "&projectname=" + projectName + "&datetime=" + currentDateTimeInISOFormat,
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

	initializeStockCompanyPauseVariable: function(){
		stockCompanyPause = 0;
	},

	initializeAllVariables: function(){
		issueShowSteps = 0;
		issueDefineSteps = 0;
		stockCompanyPause = 0;
		projectDefineSteps = 0;
		issueShowLatestSteps = 0;
	},

	saveMessage: function(teamName, returnMessage, username){

		if(returnMessage == ""){
			returnMessage = "Not able to perform this request.";
		}

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

		returnMessage = "";

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
		}else if(symptom.toLowerCase().indexOf("nausea")){
			doctorId = 44;
		}else if(symptom.toLowerCase().indexOf("neck pain")){
			doctorId = 136;
		}else if(symptom.toLowerCase().indexOf("nervousness")){
			doctorId = 114;
		}else if(symptom.toLowerCase().indexOf("night cough")){
			doctorId = 133;
		}else if(symptom.toLowerCase().indexOf("pain in the limbs")){
			doctorId = 12;
		}else if(symptom.toLowerCase().indexOf("pain on swallowing")){
			doctorId = 203;
		}else if(symptom.toLowerCase().indexOf("palpitations")){
			doctorId = 37;
		}else if(symptom.toLowerCase().indexOf("paralysis")){
			doctorId = 140;
		}else if(symptom.toLowerCase().indexOf("reduced appetite")){
			doctorId = 54;
		}else if(symptom.toLowerCase().indexOf("runny nose")){
			doctorId = 14;
		}else if(symptom.toLowerCase().indexOf("shortness of breath")){
			doctorId = 29;
		}else if(symptom.toLowerCase().indexOf("skin rash")){
			doctorId = 124;
		}else if(symptom.toLowerCase().indexOf("sleeplessness")){
			doctorId = 52;
		}else if(symptom.toLowerCase().indexOf("sneezing")){
			doctorId = 95;
		}else if(symptom.toLowerCase().indexOf("sore throeat")){
			doctorId = 13;
		}else if(symptom.toLowerCase().indexOf("sputum")){
			doctorId = 64;
		}else if(symptom.toLowerCase().indexOf("stomach burning")){
			doctorId = 179;
		}else if(symptom.toLowerCase().indexOf("stuffy nose")){
			doctorId = 28;
		}else if(symptom.toLowerCase().indexOf("sweating")){
			doctorId = 138;
		}else if(symptom.toLowerCase().indexOf("swollen glands in the armpits")){
			doctorId = 248;
		}else if(symptom.toLowerCase().indexOf("swollen glands on the neck")){
			doctorId = 169;
		}else if(symptom.toLowerCase().indexOf("tears")){
			doctorId = 211;
		}else if(symptom.toLowerCase().indexOf("tiredness")){
			doctorId = 16;
		}else if(symptom.toLowerCase().indexOf("tremor at rest")){
			doctorId = 115;
		}else if(symptom.toLowerCase().indexOf("unconsciousness, short")){
			doctorId = 144;
		}else if(symptom.toLowerCase().indexOf("vomiting")){
			doctorId = 101;
		}else if(symptom.toLowerCase().indexOf("vomiting blood")){
			doctorId = 181;
		}else if(symptom.toLowerCase().indexOf("weakness")){
			doctorId = 56;
		}else if(symptom.toLowerCase().indexOf("weight gain")){
			doctorId = 23;
		}else if(symptom.toLowerCase().indexOf("wheezing")){
			doctorId = 30;
		}else{
			doctorId = 999;
		}

		console.log(doctorId);

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

var botMovie = {

	fetchDetailsFromTMDb: function(teamName, choice, year){

		if(choice == 0){
			var urlToCall = movieBaseURL + "discover/movie?api_key=" + apiKeyTMDb + "&language=en-US&sort_by=popularity.desc&include_adult=true&include_video=false&page=1";
		}else if(choice == 1){
			var urlToCall = movieBaseURL + "discover/movie?api_key=" + apiKeyTMDb + "&language=en-US&sort_by=popularity.desc&include_adult=true&include_video=false&page=1&year=" + year;
		}else if(choice == 2){
			var urlToCall = movieBaseURL + "tv/popular?api_key=" + apiKeyTMDb + "&language=en-US&page=1";
		}else if(choice == 3){
			var urlToCall = movieBaseURL + "tv/top_rated?api_key=" + apiKeyTMDb + "&language=en-US&page=1";
		}

		$.ajax({
			type: "GET",
			url: urlToCall,
			dataType: "json",
			success: function(result){
				//console.log(result.results);
				var item;
				returnMessage = "Here you go";
				if((choice != 2) && (choice != 3)){
					for(var i = 0; i < 5; i++){
						item = result.results[i];
					   	returnMessage += "\nName: '"+ item.title + "'\nOverview: " + item.overview + "\nReleased Date: " + item.release_date + "\n";
					}
				}else{ //else if((choice == 2) || (choice == 3)){
					for(var i = 0; i < 5; i++){
						item = result.results[i];
					   	returnMessage += "\nName: '"+ item.name + "'\nOverview: " + item.overview + "\nReleased Date: " + item.first_air_date + "\n";
					}
				}
				//console.log(returnMessage);
				botAction.saveMessage(teamName, returnMessage, bot);
			}
		});

	}

};

var botStocks = {

	getCompanyInfo: function(stockCompanyName, teamName){

		var USERNAME = "8a304ec3a55a2ca523be45ad37f94797";
		var PASSWORD = "32fab8030b2d0be7946aacb40984a1e2";

		var urlToCall = "https://api.intrinio.com/companies?ticker=" + stockCompanyName;
		var returnMessage = "Oops! Not able to find this company"; 

		$.ajax({
			type: "GET",
			url: urlToCall,
			dataType: 'json',
			headers: {
				"Authorization": "Basic " + btoa(USERNAME + ":" + PASSWORD)
			},
			success: function (response){
				//console.log(response);
				returnMessage = "\nShowing Info about: " + stockCompanyName + "\nLegal Name: " + response.legal_name + "\nSector: " + response.sector + "\nIndustry Group: " + response.industry_group + "\nAddress: " + response.business_address + "\nPhone Number: " + response.business_phone_no + "\nCompany URL: " + response.company_url;
				//console.log(returnMessage);
				botStocks.getStockPrice(stockCompanyName, returnMessage);
			},
			error: function(response){
				botAction.saveMessage(teamName, returnMessage, bot);
			}
		});
	},

	getStockPrice: function(stockCompanyName, returnMessage){

		var USERNAME = "8a304ec3a55a2ca523be45ad37f94797";
		var PASSWORD = "32fab8030b2d0be7946aacb40984a1e2";

		var urlToCall = "https://api.intrinio.com/data_point?identifier=" + stockCompanyName + "&item=close_price";

		$.ajax({
		  	type: "GET",
			url: urlToCall,
			dataType: 'json',
			headers: {
			    "Authorization": "Basic " + btoa(USERNAME + ":" + PASSWORD)
			},
			success: function(response) {
				//console.log(response);
				returnMessage += "\nStock Price: " + response.value;
				console.log(returnMessage);
			}
		});

	}

};
