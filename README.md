# LING 402 Daily Homework Tracker # 
-by JeeHaeng Yoo (jyoo46)

## Description: ##
This is a Daily Homework Tracker for University of Ilinois LING 402: Tools & Techniques for Speech & Language Processing.
The program will create hidden cloned repository and github credential information in user's home directory and check how many daily exercises were completed in the current week. <br />
<br />
The program can be used regardless of semester or year, since date-related variables are based on system's date at the time of execution. <br />
<br />
<br />
## Instructions: ##
1. Execute setup.sh.<br />

2. The program will first create a hidden folder in user's home directory for the repository.<br />

3. The program will then ask for user's github credential and save it to the home directory as hidden file.<br />

4. If 'expect' package is not installed on your machine, the program will try to install it. The package 'expect' is required to run the program.<br />

5. If you want the program to be executed everytime when bash starts up, answer 'Y' to remaining prompts.<br />

6. When you are done with setup, execute main.sh. If you selected automatic execution, the program will be executed from bash's next start up.<br />

* To modify git credential, run ./dist/cred.sh<br />
<br />

<li>Following directories will be created: ~/.ling402repo ~/.ling402repo/<netID>-daily</li>
<li>Following file will be created: ~/.ling402repo/.git_cred</li>
<li>Following package will be installed: expect</li>
<li>Environment variable export and main.sh execution will be appended to ~/.bashrc if automatic execution chosen</li>
