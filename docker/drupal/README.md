# Drupal

A docker-compose stack with an Apache and MySQL server running Drupal 8.  

# First Time

The default password (set in `docker-compose.yml` ) is: `Passw0rd`  
You should change this before running the `rebuild-lamp-stack.sh` script.  
  
The default port for the web server is: `2080`  
You can set this to any unused port before starting a new Drupal stack.  
  
To set up the stack for the first time, or destroy the current stack and set up a fresh install of drupal, run the script:  
```
$ bash ./rebuild-lamp-stack.sh
```  
Then open firefox and browse to the setup page to finish the install.  
All the required details will be printed by the script when it runs.  
  
# Starting and Stopping

Before shutting down, you should stop the stack first with:  
```
$ bash ./stop-lamp-stack.sh
```  
Any changes should be saved until you next run the stack.  
  
Start a stack before connecting to it, with:  
```
$ bash ./start-lamp-stack.sh
```  
  
# Checking the Stack
  
You can check if everything is running OK with:  
```
$ bash ./status-lamp-stack.sh
```  
  
# Destroy the Stack
  
When you no longer need a web stack, you can destroy it by running:  
```
$ bash ./destroy-lamp-stack.sh
```  
  
  
Author: Tad Davis (tad@tinycactus.me)
