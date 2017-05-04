This repo contains sub directories, each of which corresponds to a specific lesson in course_101 at launch school. 

At the beginning of lesson_5 at launch school, I updated my local repo and tried to push it, prior to pulling the latest version to my local repo. Naturally, this did not work. I was unable to pull my remote repo (I cannot recall why). 

I went through many steps that I should have recorded but did not: The moral of the story is to record the commands initiated so that one can trace their steps… 

So that is what I will be using this README file for: Each commit will be accompanied by a new entry to this file, recording exactly what I’ve done… 



_____________________________________________
5/4/2017 @ 11:33AM EST

I deleted my local repo that was a clone of my error-ridden remote repo. I downloaded the oldest correct version of my remote repo from GitHub as a zip file. I initiated this file as a git repo and configured it per the instructions in the Into to Git and GitHub book at Launch School. I then attempted to push it to my remote repo and got the following error: 
	“To https://github.com/WilfredTA/course_101
 ! [rejected]        master -> master (fetch first)
error: failed to push some refs to 'https://github.com/WilfredTA/course_101’
hint: Updates were rejected because the remote contains work that you do
hint: not have locally. This is usually caused by another repository pushing
hint: to the same ref. You may want to first merge the remote changes (e.g.,
hint: 'git pull') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.” 

Looking on stack overflow, I saw that one can use “git push -f origin master” so this is what I did, and it remedied the issue. 

Next, I created a README.md file. I am editing it with this writing, then I will add it, commit it, and push it. 

UPDATE: Attempting to push this file with ‘git push’ yielded the error 
	“ fatal: The current branch master has no upstream branch.
To push the current branch and set the remote as upstream, use

    git push --set-upstream origin master’

I re-attempted by typing ‘git push origin master’ which remedied the problem.

UPDATE: After pushing, I edited my course_101/.git/config file by typing “git push -u origin master” so that my master branch was set to track the remote master branch. This was equivalent to editing the config file and typing [branch “master”] and then typing remote = origin below that.

/End Log
_________________________________________
5/4/2017 @ 4:37PM EST
Created lesson_5 directory