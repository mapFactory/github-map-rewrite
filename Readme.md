## For Developers
All code is included inside app folder.
<br>Rakefile in app folder contains the commands that run the program.
<br>All other classes currently in app/src.

## Why Github-Maps?
It started after looking at someones Repository on Github called "RandomPrograms". The repository consisted of subfolders and each subfolder having subfolders. A context was presented by this "RandomPrograms" repository; however, a user could not star and self organize the projects they appreciated.

The initial mission of the program is to go through each subfolder in that repository and convert it into a github map with subfolders becoming repositories - either on your account or an account with a moniker "Star" at the end of it. The user will be left with a map. Where projects can be accessed and a user is free to star what they enjoy.

The second part of the project is that most people have repositories correctly organized on Github. However, there is no context between projects. A quick look at github.com/google shows 961 repositories. But a user curious in finding something unique and not something popular to contribute toward would need to read all 961 repositories. Github-Maps solves this problem by allowing a repo to provide context for other repositories.
## How to install.
<pre>
install ruby ... #ruby instructions to be added.
bundle install rake<br>
<br>verify the install <b>command:</b> rake --version; ruby -v;
</pre>
## How to use.
#### Convert your repo with many subfolders into a map... with the subfolders as repo's
<br>(0) Clone Github-Map
<br>(1) cd into Github-Map
<br>(2) <b>command:</b> rake Github_Map
<br>... we will clone the folder on the primary account input into the program.
<br>and change the folder structure into a Github Map so that subfolders are made repos. And the organization <br>persists with the resultant repository having submodules to those previous subfolders.

#### Make a map locally and we will build it for you.
<br>... say you have a large number of repositories on github. But no context showing how repositories are related.
<br>(0) make a directory... topmost folder what you would like to call the map... subfolders the repositories <br>online that fit into that classification.
<br>(1) clone Github-Map
<br>(2) <b>command:</b> mv "yourFolderName" "Github-Map/my_repositories"
<br>(3) make note of the repository name because you will be prompted for it in the program.
<br>(4)<b>commands:</b>
&emsp;&emsp;&emsp;<pre>rake Github_Map;     #build
rake de_Github_Map   #revert back</pre>


<b>Copyright (c) 2017, Ryan Murphy and Michael Dimmitt</b>
