# README

# Rails app 
This rails app was created as part of assessment for Coder Academy Fasttrack Bootcamp over two weeks in April, 2019. 

Trello: https://trello.com/b/bqhyTEfY

Heroku site: https://enigmatic-shelf-88976.herokuapp.com/

Github repo: https://github.com/rastko909/frothies

Figma moodboard and wireframes: https://www.figma.com/file/aPgYx1QKRcH5hHLC6htyxhyK/Frothies?node-id=24%3A0

Google slides User Personas: https://docs.google.com/presentation/d/1MiDaYOKiY3vW1_pMVOsPU4bY29DUTXa0rsX3hkpEaX4/edit?usp=sharing

Cardboard User Stories: https://app.cardboardit.com/maps/guests/f9c1bdb994a2426b642e43ccab0b20034ce0e5109cab39e661aa8c13424756b4



# Short answer questions
## 1. What is the need (i.e. challenge) that you will be addressing in your project?

In the beer industry, we identified that microbreweries are stretched for time and resources and find themselves in an increasingly saturated market. We recognised a strong need for them to diversify their customer base if they are to survive and keep the art of craft beer alive. 

At the same time, our target customers from Generation X, Y and Z have a passion for good quality craft beer. They also want to support local businesses. However, these people may be too busy with study or work to search for or visit such microbreweries.

We saw an opportunity to connect these two groups of people via an app that acts as a marketplace, relieving time pressure for both parties and bridging the gap between buyer and seller. 

## 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

business case

saturated (stat - 200% in two year increase?)

millenials wanting to buy local, support communities

The business case for this issue is that microbreweries tend to be 'bricks and mortar' physical stores. Such stores traditionally rely on customer visits for tours or tastings for business (stat on tourist industry?). (stat - online?) This means the breweries miss out on the opportunity that digital environments provide and therefore do not pass on this convenience to their customer base or have the chance to widen their market. As the craft beer industry has soared in popularity, ignoring an opportunity to diversity is now a more serious risk for the microbrewers, and by extension, the local economy.

## 3. Describe the project will you be conducting and how your App will address the needs.

Frothies, the online marketplace we are creating, aims to make the user experience online simple and straightforward. This will save time for busy brewery owners, because they'll be able to get immediate data on their products without doing the analytics manually. In addition, their products will be introduced to a larger online audience outside their local area without them having to pay for advertising or use their resources to travel to different areas to sell.

For the buyers in our marketplace, the project will provide a convenient online environment that allows them to support microbreweries without having to spend time searching for them or travelling to them. We bring the beer tasting directly to their front door. 

## 4. Describe the network infrastructure the App may be based on.



## 5. Identify and describe the software to be used in your App.



## 6. Identify the database to be used in your App and provide a justification for your choice.

Although the default database for Rails apps is MySQL, we followed the recommendation from staff to use PostgreSQL since it works better with Heroku. Postgres is native to Heroku while MySQL requires workarounds. A quote from a Heroku blog states 'At Heroku, we believe PostgreSQL offers the best mix of powerful features, data integrity, speed, standards compliance, and open-source code of any SQL database on the planet.' 

Source of quote: https://blog.heroku.com/postgresql9-public-beta

## 7. Identify and describe the production database setup (i.e. postgres instance).

We used the default settings for almost all of the database setup. This meant it was, as per Ruby on Rails apps, running off Rack. Rack is a middleware that executes our Ruby code, starting with reading and running the config.ru file (.ru being a naming convention for Rack files). We changed two settings for production (i.e. in our production.rb file). 

Firstly, we set our storage for images to be Amazon so we could use cloud-based storage via S3 for some of our images. We included these details in the storage.yml file. 

Secondly,xxx? 

## 8. Describe the architecture of your App.

MVC

## 9.Explain the different high-level components (abstractions) in your App.

Our app is built on Rails, a Domain Specific Language (DSL) which is itself written in Ruby. For the computer to understand our Ruby on Rails app, Ruby is translated into C, a low-level language, low-level being a language with less abstraction that is closer to machine code. C is then translated into Assembly, which then translates into the binary that the machine needs to run it. 

One significant level of abstraction in Rails is the routes. The routes allow our app to match requests (e.g. GET, POST) to an action in the controller. Ultimately, this will direct the user to a URL, and because of this abstraction, we are not required to hard code the URLs or routes as strings.


 
## 10.Detail any third party services that your App will use.

Devise?
Cancan?
Stripe?
AWS?

## 11.Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).



## 12.Discuss the database relations to be implemented.

## 13.Describe your project’s models in terms of the relationships (active record associations) they have with each other.

## 14.Provide your database schema design.

## 15.Provide User stories for your App.

We created user stories for three users as follows.
- a buyer
- a seller (i.e. a microbrewery owner or manager)
- a site admin.



## 16.Provide Wireframes for your App.



## 17. Describe the way tasks are allocated and tracked in your project.

*Communication channel in slack*

![Screenshot of Slack channel](images/Day&#32;4/Slack.png)

## 18. Discuss how Agile methodology is being implemented in your project.

We used Agile methodology concepts in several ways, including
- Kanban (Trello)
- Scrum framework
- User story mapping

**Kanban**

We maintained an agile (Kanban) board on Trello for project management with cards, columns, work-in-progress limits (3 for In Progress column), a backlog that we groomed, and a delivery point throughout the project. 

For the first four days, we're using Kanban, and for the 5th to the 8th day, we plan to use Scrum while keeping our backlog (i.e. 'Scrumban'). 

Screenshots of the Kanban are shown throughout our planning notes after this short answer question section. 

During the scrum, we plan to
- prioritise tasks from our backlog
- do sprint planning as a group
- have two shipped epics as our scrum goals
- do one sprint
- do retrospectives at the end of each day since our sprint is only five days long.

We created User stories early in the project as part of our planning and will use these during the sprint to complete features we haven't done. These were done with
- Our two users (Buyer and seller)
- One epic for each user (allow customer to buy and allow buyer to sell respectively)
- Features (e.g. enable sign up and login, list products for sale)
- User stories (e.g. As a buyer, I want to sign up so I can create an account)

*User story mapping using Cardboard.io*

![User story map](images/Cardboard_UserStories.png)

We also followed customer journeys using the cards and inbuilt function in the site. One customer jouney is shown in the screenshot below.

*Example customer journey from user story map*

![Customer journey screenshot](images/Cardboard_CustomerJourney.png)

While we attempted to use the scrum framework, we didn't have the formal roles from agile such as scrum master, instead sharing these roles fluidly between us.

We used the concept of User stories and User story mapping but we didn't strictly measure velocity as this sprint was for this one project and would not be repeated with the same development team again.

## 19. Provide an overview and description of your Source control process.

From day 1, all group members set up a local branch for Github repository, Frothies.

The group agreed that each time changes made worked locally (e.g. features were added or models changed), we pushed to Github from our local branch and created a pull request then merged to Master branch. Other group members would then pull the master and merge master for their local copy of the app. 

Approval was always agreed on between the three group members for this process. Confirming the merge was sometimes a different person to the person that pushed the changes to Github, but in some cases when we were all together, it may have been the person who pushed to Github creating the pull request and confirming. 

## 20. Provide an overview and description of your Testing process.

We did testing at different levels during the app development. 

This included testing as we developed each feature to see how it worked and also trying edge cases each time. For example, when we added authorisation, we tested different logins for different users to check that the authorisation behaved as expected. 

We also deployed to Heroku and tested using 'raise' by entering variables and checking output was as expected. For example, after deploying the products home page, we tested that we could create, save and retrieve objects using 
- e = User.new
- e.save
- e.title

We agreed to use Minitest for unit testing since it is the default for Ruby libraries and has the inbuilt test files. We did one set of testing around product, since this was our main component on the app. 

We received one error to do with 'image_url' and tried several strategies to get rid of it (deleting the relation 'has_one_attached' from the products model, manually editing the image_url when seeding, xxx ), none of which removed the errror. As this was the only error we were getting and the app was still deploying successfully, we agreed to move on. 

*Screenshot of product test*

![Screenshot of unit testing](images/Day&#32;5/RA_Testing.png)

*Screenshot of testing error*

![Screenshot of test error](images/Day&#32;5/RA_TestingError.png)

## 21. Discuss and analyse requirements related to information system security.



## 22. Discuss methods you will use to protect information and data.

## 23. Research what your legal obligations are in relation to handling user data.



# Day 1

**Morning plan**

- JP + RB go through test app deployment / Stripe / Cancan / Devise
- GW set up Trello w/Rubric

**Middle of day check in**

Meeting to agree on MVP / roles / day 1 and 2 plan
- Completed basic wireframes on board (see screenshot)
  - Home pages (same for all users)
    - Pop up w/age check
    - Landing page
  - Login page 
    - has sign up option
    - asks if buyer or seller
  - Buyer home page
  - Seller dashboard
  - Admin dashboard
- Agreed on accounts required for MVP (Buyer, Seller, Admin, Guest)
- Agreed on Day 1 + 2 plan
  - GW do Readme/Trello
  - JP do research on screenshots
  - RB do ERD
Photo of Day 1 meeting board
![Photo of Day 1 record of decisions on board](images/Day&#32;1/Day1_Meeting.jpg)

Trello at start of Day 1
![Trello board at start of Day 1](images/Day&#32;1/RA_Trello_StartOfDay1.png)

**Schema design**

RB worked on the schema more and completed the ERD. The ERD changed during the day as we refined the schema design, as shown in the screenshots comparing the start of the day and the end of the day.

*Screenshots of ERD at start of Day 2*

![Screenshot of ERD](images/Day&#32;1/ERD_v1a.png)

![Screenshot of ERD](images/Day&#32;1/ERD_v1b.png)

*Screenshots of ERD at end of Day 2*

![Screenshot of ERD](images/Day&#32;1/ERD_v2a.png)

![Screenshot of ERD](images/Day&#32;1/ERD_v2b.png)



*Trello at end of Day 1*

![Trello board at end of Day 1](images/Day&#32;1/RA_Trello_EndOfDay1.png)

*Screenshot of migrating and implementing bootstrap*

![Screenshot of terminal](images/Day&#32;1/Migrating.png)
*Heroku home page deployed at end of Day 1*

![Screenshot of test home page after deployment](images/Day&#32;1/RA_Heroku_Day1.png)

# Day 2

**Morning check in**

Group agrees
- RB had updated the ERD overnight and wanted to continue, so he'll work on that for the morning. 
- GW to update Trello after check in, complete linking cards in Trello and check requirements are on track 
- JP continuing research for wireframes
- group completed WIP and gave following update:

Notes from WIP and morning plan

*Screenshot of Day 2 morning planning using Kanban backlog*

![Screenshot of notes from WIP](images/Day&#32;2/RA_Trello_Day2WIP.png)

*Trello board at start of Day 2*

![Trello board at end of Day 2](images/Day&#32;2/RA_Trello_StartOfDay2.png)

**Debugging**
We continued adding to the controllers and models. We did debugging throughout the day. 

*Example of debugging*

![Screenshot of debugging](images/Day&#32;2/Day2_debugging.png)

**Wireframes**
We completed wireframes for two devices and agreed to design for mobile first, so started with those once in Figma. 

After agreeing on the colour scheme and feel we wanted for the brand, JP created a moodboard then moved onto wireframes. 

Changes:
We discussed UI design and made a few changes, namely
- moving icons for navigation to bottom of mobile UI so that there was more space between them and they were in the hot zone
- moving nav pane on desktop to all be on the same side rather than on two sides to reduce visual clutter, make the information hierarchy more obvious and keep the UI clean

*Lo-fi wireframes*

![Lo-fi wireframe sketches](images/Day&#32;2/Day2_LoFiWireframes.jpg)

*Figma moodboard*

![Screenshot of online moodboard](images/Day&#32;1/Fig_moodboard.png)

*Wireframes in Figma*

Wireframes for mobile were completed first, as we agreed that designing for mobile-first was the best option for our users and for the wider trend in society preferencing mobile use.

*Screenshot of mobile wireframes*

![Wireframes on for mobile](images/Day&#32;2/Fig_mob.png)

Wireframes for desktop were completed next, as our sellers would most likely operate from desktop at least some of the time, as might buyers.

*Screenshot of desktop wireframes*

![Wireframes for desktop](images/Day&#32;2/Fig_desktop_1.png)

![Wireframes for desktop](images/Day&#32;2/Fig_desktop_2.png)

By the end of day 2, we completed all our tasks as agreed in the morning and midday check ins. 

*Screenshot of End of day 2 Trello card*

![Screenshot of end of day 2 check in notes](images/Day&#32;2/RA_Trello_EndOfDay2.png)

*Start of Day 3 trello*

![Screenshot of start of day 3 Trello board](images/Day&#32;2/RA_Trello_StartOfDay3.png)

**Day 3 priorities**
1. Be able to retrieve objects and complete one transaction, deploy to Heroku
2. Start work on short answer questions
If done early, then: 
- Testing
- Stripe
- CanCan

**Middle of day update**
1. Objects can be retrieved
2. We've started on short answer questions and will do more together as a group starting after lunch
   Other:
   - we've researched testing and will start with minitest
   - we've got wireframes for two devices, now working on a third

**Wireframes**
Wireframes were completed for a third device—iPad.

*Screenshot of iPad wireframes*

![Screenshot of iPad wireframes](images/Day&#32;3/Fig_ipad_2.png)


**End of day 3 update**
RB/JP stayed late and worked our order system
All MVP features for buyer now working as per user stories, i.e.
- sign up
- add products to cart
- store products in cart (i.e. be able to log out and log back in and see the products there still)
- view products in cart

Third device wireframes are done

*Updated wireframes for Ipad*

![Screenshots of wireframe design](images/Day&#32;4/RA_Fig_Ipad1.png)

![Screenshots of wireframe design](images/Day&#32;4/RA_Fig_Ipad2.png)

Details of end of day 3 check in in Trello card screenshot below. 

*Screenshot of End of day 3 update*

![End of Day 3 notes](images/Day&#32;4/RA_Trello_EndOfDay3.png)

# Day 4

*Day 4 planning meeting*
We agreed to get the rest of the MVP requirements added in today and tomorrow if required. There is Stripe, Cancan, and AWS image uploading remaining for the technical requirements (see previous screenshot End of Day 3 update in Trello). 

Authorisation 

We revised authorisation and decided to implement six abilities in total in week 1 using Cancan. We'll use the Cancan shortcuts (e.g. Read for :show, :index, :to). We also planned further authorisation to add in in week  (see screenshot below).

*Authorisation planning*

![Screenshot of Trello card with authorisation plan](images/Day&#32;4/RA_Trello_AuthorisationPlanning1.png)

*Authorisation brainstorm*

![Screenshot of Trello card with authorisation brainstorming](images/Day&#32;4/RA_Trello_AuthorisationPlanning2.png)


*End of Day 4 update*

At the end of Day 4, we had Stripe working, had added image uploading, and had organised the master key for all group members to have locally. Rastko 

![End of day 4 notes](images/Day&#32;4/RA_Trello_EndOfDay4.png)


**Day 5**

*Day 5 planning*

![Screenshot of Trello board at start of day 5]


*Trello at end of day 5*



![Screenshot of Trello board at end of day 5]

**Day 6**

Start of Day 6 planning
- Retro on week 1
- Go through rubric and identify gaps / priorities for the next few days

We wanted to start day 6 by re-evaluating where we were at and also making sure everyone was on the same page in terms of understanding the data structure and code, as shown in the picture of our Trello card below.

![Screenshot of Trello card, start of day 6]()

![Screenshot of Trello board at start of day 6](images/Day&#32;6/RA_Trello_StartOfDay6.png)

We started the day by completing a retrospective on the past week. We did a two minute ideation on 'What worked well' then discussed each item (picture of board below).

*Photo of retro—what worked well*

![Photo of retrospective—what worked well](images/Day&#32;6/RA_Retro_Good.jpg)

In general, we agreed that a lot of the MVP features had gone well, as had our communication and planning.

Next, we did a two minute ideation on 'What didn't work well', and went through those individually (picture of board below).

*Photo of retro—what to improve*

![Photo of retrospective—what to improve](images/Day&#32;6/RA_Retro_Improve.jpg)

We identified some similar and some different challenges. We agreed that we needed to put more time into answering short answer questions, based on the length of time they had taken in week 1. 

Finally, we discussed how we could shift or solve all of the challenges that came up in our 'What didn't work well' ideation. 

*Photo of retro—solutions*

![Photo of retrospective—solutions](images/Day&#32;6/RA_Retro_Solutions.jpg)

We prioritised technical challenges in our workflow for day 6 and 7, and agreed to go over how MVC is working in the app to make sure we all understood the code we hadn't worked on. 

Revision of ERD

Rastko wanted to test Gwenny and Jieyi on how well they understood the ERD since he had designed the bulk of it. We drew the ERD as we understood it (most important relations, see first picture below), and afterwards, he talked us through his understanding afterwards (see second picture below).

*Gwenny and Jieyi's ERD*

![Drawing on board of ERD](images/Day&#32;6/RA_ERD1.jpg)

*Rastko explaining how he saw our ERD*

![Rastko explaining ERD](images/Day&#32;6/RA_ERD_R.jpg)

*Rastko's explanation of ERD*

![Drawing on board of second ERD](images/Day&#32;6/RA_ERD2.jpg)

*Trello in middle of day 6*

![Screenshot of Trello board at middle of day 6](images/Day&#32;6/RA_Trello_MiddleOfDay6.png)

Check in at end of day 6

At the end of day 6, we went over what had been completed for the day and what we aimed to do next, as shown in the image of the Trello card below. We agreed we wanted to have a 'shippable' product by Friday, and planned to do products, design and still some work on user flow.

*Trello cards at end of day 6*

*Tasks completed:*

![Screenshot of Trello card at end of day 6](images/Day&#32;6/RA_Trello_EndOfDay6.png)

**Day 7**

*Morning of Day 7 planning*

We checked in in the morning as RB had done work overnight. He had improved the user flow and added more functionality. 

*Trello card at start of day 7*

![Screenshot of plan at start of day 7](images/Day&#32;7/RA_Trello_Day7Planning.png)

Gwenny wrote copy for our 3 microbreweries for Rastko to include on brewer profile views (see screenshot) then trialled adding a search button to the site using bootstrap. It was difficult styling bootstrap and unpacking previous code (see screenshot below of testing). 

*Screenshot of copy for microbreweries*

![Screenshot of copy writing for microbrewery profiles](images/Day&#32;7/RA_Copy_Breweries.png)

*Screenshot of testing design with search box*

![Screenshot of red boxes for testing CSS](images/Day&#32;7/RA_Navbar_Styling.png)

Jieyi finalised bottle design for individual products including branding for each microbrewery. 

*Screenshot of product designs for microbreweries*

![Screenshot of products designed in Figma](images/Day&#32;7/Can&#32;Design.png)

![Screenshot of products designed in Figma](images/Day&#32;7/Can&#32;Design&#32;Process&#32;2.png)

**Day 8**

*Morning of Day 8 planning*

In the morning of Day 8, we started with a drop down menu that Rastko had added in last night. We agreed he would continue refining user flow and adding our features for vendors like:
- marking an order as shipped
- sending an email verification from Frothies to users after payment
- sending an email to users from a vendor when order shipped

*Screenshot of Day 8 plan*

![Screenshot of Trello card for day 8 plan](images/Day&#32;8/RA_Trello_Day8Plan.png)

*Screenshot of Trello board at start of day 8*

![Screenshot of Trello board at start of day 8](images/Day&#32;8/RA_Trello_StartOfDay8.png)

Jieyi will continue with designing products (see screenshot) then UI of the site. We tried several designs e.g. with logo at top, at bottom, with block colour background, and then Jieyi designed as she felt worked.

Gwenny wrote copy for the 12 individual products (see screenshot). We agreed on having a short description for cards and a longer description in case we get a product view implemented that allows more text. We also added one product for one brewery, so there were 13 products in total.

*Screenshot of an extract of copy written for products*

![Screenshot of copy writing for products](images/Day&#32;8/RA_Copy_Products.png)

*Designing product looks (including drink names and logo for brewery)*

![Screenshot of products in Figma](images/Day&#32;8/RA_Fig_Products_Day8.png)