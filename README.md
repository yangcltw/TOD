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

* Story-1 : As a user, I can see attractions in the parks so that I can know what attractions Taipei parks have.
  * TOD-0 read document of taipei open data (Closed at 2017/8/9)
  * TOD-1 create iOS project (closed ata 2017/8/10)
  * TOD-2 define data model for json (Closed at 2017/8/13) https://github.com/jsonmodel/jsonmodel
  * TOD-3 build http request and get data by http request (Close at 2017/8/13)
  * TOD-4 find 3rd party json parser (Closed, worked on TOD-2)
  * TOD-5 import 3rd party library and parse data  (Closed, worked on TOD-2)
  * TOD-6 create storyboard for this page (consider support device and x1, x2, x3. i18n support) (Closed at 8/14)
  * TOD-7 create custom table cell view (Closed at 8/14 , worked on TOD-6)
  * TOD-8 bind data to table view (Closed at 8/14 , worked on TOD-6)
  * BUG-1 the image view size is not correct if re-use the cell (https://github.com/rs/SDWebImage/issues/9)(closed at 8/16)
  
* Story-2 : As a user, I can see the list of attractions in the park so that I can go to visit the spot in the park after click table cell of attraction list.
  * TOD-9 create new storyboard to display park detail info  (closed at 8/16)
  > We had some storyboard management and merge issue if multiple developer work on UI part. I took this way to avoid this by reference this https://medium.com/ios-os-x-development/xcode-a-better-way-to-deal-with-storyboards-8b6a8b504c06. 
  * TOD-10 implement related attraction in detail view. 

# Stories for enhancement
> query pagenation and lazy loading. debouncy for refresh. data cache. map support (there is geo info in the data, need google api to query) , UI of device support move to enhancement
***
not finish yet.



