# Instructions

Navigate to your project folder on your machine.

Run git clone "repo_url"

In an integrated terminal, run 'bundle install'

Refer to 'db-migrations' folder for any necessary database setup instructions.

# Branch control

## Useful commands

git branch -a (View all branches, an * will appear next to the current branch you are in)
git branch "branch name" (Creates a new branch, the speech marks are not required)
git checkout -b "branch name" (Creates and checks out a branch all in one command)
git checkout "branch name" (changes to a different branch. If the branch does not exist will throw error, don't worry just run the <br />
command again and check spelling)
git merge "branch name" (Merges current branch onto main, add "--no--ff" to keep the branch commit history)

## Branch workflow

- Make sure we an up to date main branch, using git pull. <br />
- Create a new branch, naming it based on the ticket(s) we are currently working on. <br />
- Checkout our new branch and make the appropriate changes. <br />
- If making a small change, we do not need to run a git push command, adding and commiting the change will be enough, the push <br />
functionality is achieved through merging the branch. <br />
- If we are changing pair, or working on a branch for a longer time, we can git push as well. REMEMBER!!! We must set the <br />
origin point for these pushes to our current branch (the terminal will keep you right). <br />
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
