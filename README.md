# Instructions

Navigate to your project folder on your machine.

Run git clone "repo_url"

In an integrated terminal, run 'bundle install'

Refer to 'db-migrations' folder for any necessary database setup instructions (scroll down for database information).

# Branch control

## Useful commands

- git branch -a (View all branches, an * will appear next to the current branch you are in) <br />
- git branch "branch name" (Creates a new branch, the speech marks are not required) <br />
- git checkout -b "branch name" (Creates and checks out a branch all in one command) <br />
- git checkout "branch name" (changes to a different branch. If the branch does not exist will throw error, don't worry just run the
command again and check spelling)<br />
- git merge "branch name" (Merges current branch onto main, add "--no--ff" to keep the branch commit history)

## Branch workflow

- Make sure we an up to date main branch, using git pull. <br />
- Create a new branch, naming it based on the ticket(s) we are currently working on. <br />
- Checkout our new branch and make the appropriate changes. <br />
- Make the changes and run git add and commit commands as normal. <br />
- Aim not to push new changes until they are complete but if we need to, so our pair can take over
for example, run the push command via the follwing step. <br />
- Git push will always point to the origin for the main branch to begin with, our first push on our new branch we must use 'git push --set-upstream origin "branch name". This will point our changes to our new branch instead of the main branch (that would be bad). We only have tp do this once, any further pushes we can use 'git push origin'. <br />
- Once happy, its time to merge. We can do this through the terminal or alternatively through GitHub directly. <br />
- For simplicity, stick to merging using GitHub. Set authorization if required and move your ticket from 'Doing' to 'Merge Ready'. <br />


# Makers_BnB
Group Project

# User Stories

Key: 

MVP = Minimum Viable Product <br />
F = Functionality <br />
NTH = Nice to Have <br />

## (Shared):

As a host/user <br />
So that I can use the site <br />
I want to be able to create an account/login [NTH]

As a host/user <br />
So that I can end the session <br />
I want to be able to log out [NTH]

## (User):

As a user <br />
So that I can book a space <br />
I want to be able to view available spaces [MVP]

As a user <br />
So that I can book a space <br />
I want to be able to request a booking [MVP]

As a user <br />
So that I can see what dates I can book, <br />
I want to only see dates that are available [NTH]

As a user <br />
So that I can find an appropriate space <br />
I want to be able to filter properties by keywords/search terms [NTH]

As a user, <br />
So that I can change my mind <br />
I want to be able to cancel my booking [NTH]

As a user, <br />
So that I know my booking was successful <br />
I want to receive confirmation [NTH]

## (Host):


As a host with multiple spaces, <br />
So that I can offer all of them <br />
I want to be able to list multiple spaces [F]

As a host, <br />
so that I can inform users about my space <br />
I want to be able to add space information [F - Priority!]

As a host, <br />
So that I avoid booking clashes <br />
I want to be able to show a range of available dates for my property [NTH]

As a host <br />
So that I can control bookings <br />
I want to be able to approve booking requests [F, NTH]

As a host, <br />
So that I can make money and rent my space, <br />
I want to list my space [MVP]

? As a host, <br />
so that I don't lose out on bookings, <br />
booking dates that have not been confirmed should still be available for other users to book [F, NTH]

As a host, <br />
So that I can give up to date property information <br />
I want to be able to edit my listings [F]

As a host, <br />
So that I can remove expired listings <br />
I want to be able to delete listings [F]

## Database Setup

To setup the database:

* Connect to psql
* Create the database using the psql command `CREATE DATABASE makersbnb;`
* Connect to the database using the psql command `\c makersbnb`;
* Run the query we have saved in the file 01_create_property_table.sql
* Populate your table with a row by running `INSERT INTO property (property_name, description, price,host_name) values ('Makers Paradise', 'Quaint little paradise escape, perfect for couples and families', 130.75, 'Benedict Cumberbatch');`

To check you have everything set up ok, please take a look at the property table inside the makersbnb database. You should see one row in there.  

To setup the test database:
* Connect to psql
* Create the database using the psql
command `CREATE DATABASE makersbnb_test;`;
* Connect to the database using the psql command `\c makersbnb_test`
* Run the query we have saved in the file 01_create_property_table.sql