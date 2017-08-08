# Description
This project is use taipe open data to show the attractions information of parks.  

The api description is under http://data.taipei/opendata/datalist/datasetMeta/outboundDesc;jsessionid=F4E9F0B6CD9AA351C420C81FFDD433F2?id=ea732fb5-4bec-4be7-93f2-8ab91e74a6c6&rid=bf073841-c734-49bf-a97f-3757a6013812

And the data is under http://data.taipei/opendata/datalist/apiAccess?scope=resourceAquire&rid=bf073841-c734-49bf-a97f-3757a6013812

# Goal
To show agile software development I had work on and demostrate how it work in one project

# Assume
This project is for iOS project development. It can be applied to another types of project as well.

There are full process for software development. For development cycle every day, we have
* tool for stories. eg. jira
* continouse integration tool. eg. Jenkins
  * daily build
  * auto testing
  * auto deployment eg. DeployGate
  
There are full process for agile development. For every project cycle, we have
* investigation for project requirment
* kick-off meeting for project
* create project backlogs and stories
* create sprint borad for each sprint
* planning poker for story points for each sprint
* daily stand-up meeting
* demo for each end of sprint
* retrospective for sprint

***
We don't have jira or any other tools for help right now. I'm going to create stories and subtasks below to plan this project and show the progress by updating by comment or ().
***
# Stories for MVP version
> There are two stories for the requirements from PO, each story is represent two UI screens accordingly.
* As a user, I can see attractions in the parks so that I can know what attractions Taipei parks have.
  * read document of taipei open data
  * find json parser
  * create storyboard for this page
  * create custom cell view for the table cell
  * define data model for json
  * 
* As a user, I can see the list of attractions in the park so that I can go to visit the spot in the park.

# Stories for enhancement
> query pagenation and lazy loading. debouncy for refresh. data cache.
***
not finish yet.



