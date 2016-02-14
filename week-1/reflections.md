# Think About Time Reflection

I learned about meditation techniques, the benefits of mindfulness in general, getting into the zone, Time Boxing and the Pomodoro Technique.  Time Boxing is setting a specific amount of time to work on a task, stopping at the appointed time and assessing what was accomplished.  After reading about the Pomodoro Technique last week, I applied it today while working on this task, as well as on another task I wanted to accomplish.  I found it to be very helpful.  Normally, I simply do tasks without any realistic goal in mind, get distracted easily when something I am doing feels uncomfortable and lose a lot of productivity as a result.  Having the 25 minute box automatically made me focus and stay on track.  

I will continue to work with the Pomodoro method for my bootcamp work and other tasks, because I believe it will help me a great deal and make my Dev Bootcamp tasks seem less daunting.  I have meditated in the past and reaped the benefits, but have not be doing so in the last few years.  I will definitely begin meditating again, which will also improve my focus and the quality of my work.  The combination of the two will help me *get into the zone*. 


# The Command Line Reflection


A shell is an interface to access a computer’s operating system.  A bash is a specific type of shell. 

I enjoyed the CLI Crash Course.  A few commands were challenging, but most were easy and logical.  The mv command I didn’t understand, and I was unable to figure out how to move a file from the desktop to the temp folder.   The output for any help command had very little information for some reason.  The internet will have to be my resource.  Also, the –p addition did not work on my Windows system.

Creating and removing files and directories and moving around in the OS are clearly important, as is grep for searching inside files. 

pwd - print working directory
ls - list directory
mv - move (or rename)
cd - change directory
../ - added to cd to move additional levels at the same time
touch - create a new file
mkdir - create a directory
less - go through a file
rmdir - remove directory
rm - remove
help - access help on a specific command



# Forking and Cloning Reflection

**Create a new repo**

Click on the + sign in the upper right corner of github.com

Choose the option New Repository

Fill in the form with the following:

..*Repository Name
..*Description
..*Choose Public or Private
..*Add a README, if desired
..*Add a license from the pull-down menu

Finish by clicking the Create Repository button

 

**Fork an existing repo**

Go to the website of the repo on github.com

Click on the Fork button on the right side, opposite the repo’s name

Click on one of the given options to choose where it should be forked

When your copy pops up (it will now begin with your GitHub name), copy the weblink and follow the cloning instructions below

 

**Clone an existing repo**

Once you have created or forked a repository on GitHub, you can clone it to your own machine to work on.

Copy the URL of your version of the repo

Open your Bash or Command Line

Add or navigate to the folder in which the repo will reside

Type “git clone” and paste in the URL with a space in between

Input github.com username and password, if requested


This process of creating, forking and cloning repos looked challenging at first, but ended up being relatively simple.  The website is not difficult to navigate and the command line part was minimal.  I enjoyed remembering the commands I learned to create a new directory, list the files, etc.  However, I was unable to delete the new repo, in order to reinstall it.  I kept getting an error message that the file was not empty.  I tried to accomplish it in my PowerShell, which gives the option to delete content (files) in directories when the parent directory is deleted, but it didn’t work.  So, I looked online for help and found a rm –r .git command and tried that.  However, that also didn’t work.  Finally, I posted the question on Slack and got an answer of rm –rf “dir name”, which adds force and removes files within directories.

The end


