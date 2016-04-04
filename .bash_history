cd Documents/VimEnvironment/
ls
cd vimfiles/bundle/
git clone git://github.com/altercation/vim-colors-solarized.git
ls
cd vim-c
cd vim-colors-solarized/
ls
exit
cd D:
cd Dev_crnt/
cd WagSwTools/
git status
git add --all
git commit -m "Bom checker updated and complete (ready for user testing)"
git push origin master
git status
git status
git add --all
git commit -m "Deleted unused classes for bom config"
git git push origin master
git push origin master
git status
git add WagstaffTools/BomChecker/BomCheckerPage.cs
git status
git commit -m "Fixed the non-existent partno list box height issue (set to 
50"
git push origin master
git status
git status
git add --all
git commit -m "Updated the CPEditor to not include anything to do with bubble
 numbers. Also worked around a bug where the cut list isn't returning any
valid cut list folders"
git status
git push origin master
exit
cd D:
cd Dev_crnt/WagSwTools/
git status
git add --all
git commit -m "Changed name - Bill of Materials Checker to Bom Checker and 
update the error reporting text formatting to include spaces before and after
the colon character - in Bom Checker UI"
git push origin master
git log
git status
git reset
git status
git reset --hard
git status
git reset --hard
git status
git add --all
git commit -m "Updated file versions so the installer would actually install
the correct assemblies"
git push origin master
exit
cd D:
cd Dev_crnt/WagEngineeringCalcs/
git status
git add --all
git status
git commit -m "Added logic to deal with Maxicast 3 to mold interfacing"
git push origin master
git status
exit
cd D:
cd Dev_crnt/
cd WagEngineeringCalcs/
git status
git add --all
git commit -m "Added tplate logic.  Rearranged the lugs and namespaces"
git push origin master
exit
cd D:
cd Dev_crnt/
cd WagEngineeringCalcs/
git status
git status
git add --all "Fixed a bug in InnerSlotPositionFromTop - inner slot width calc"
git add --all
git commit -m "Fixed a bug in InnerSlotPositionFromTop"
git push origin master
exit
cd D:
cd Dev_crnt/WagEngineeringCalcs/
git status
cp VisualStudio.gitignore .gitignore
rm VisualStudio.gitignore 
git add --all
git commit -m "Fixed a bug in the spray hole sizes with nominal above 6. It
was 0.98. Changed it to 0.098"
git push origin master
git rm -r --cached
git rm -r --cached .
git add --all
git status
git status
git -m "Added gitignore file. Dumping all non essential files - .pdb, dll..."
git commit -m "Added gitignore file. Dumping all non essential files - .pdb, dll..."
git push origin master
cd ..
mkdir blahblah
cd blahblah/
git clone https://wagsafe.wagstaff.com/Bonobo.Git.Server/WagEngineeringCalcs.git 
cd ..
cd WagEngineeringCalcs/
git status
git status
exit
cd D:
cd Dev_crnt/
cd BilletDropMach/
git status
git add --all
git commit -m "Dumped precompiled headers. Made it x64. Updated the installer
to bring in the appropriate dependencies"
git push origin master
exit
cd D:
cd Dev_crnt/
cd WagEngineeringCalcs/
git status
git add --all
git status
git commit -m "Fixed an issue in StepInsideDiameter() in Gph ring. It was
referencing OutsideDiameter of the gph ring - which is a value with a press
fit factor applied - it's not the correct installed diameter"
git push origin master
exit
cd D:
cd Dev_crnt/WagEngineeringCalcs/
git status
git add --all
git commit -m "Added OutsideDiameterInstalled method to the graphite ring"
git push origin master
exit
cd D:
cd Dev_crnt/WagSwTools/
git status
git add Setup1/Setup1.vdproj
git status
git commit -m "Changed some minor installer properties"
git push origin master
exit
cd D:
cd Dev_crnt/
cd EngDataSvc/
git status
git add --all
git commit -m "Added a field to the configuration for every column called
JDEName"
git push origin master
exit
cd D:
cd Dev_crnt/SwDwgParser/
git init
git remote
git remote -help
git remote add origin https://wagsafe.wagstaff.com/Bonobo.Git.Server/SwDwgParser.git
git remote -v
git status
git add --all
git status
git commit -m "initial"
git push origin master
exit
