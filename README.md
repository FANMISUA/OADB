<a name="readme-top"></a>

# OADB webtool and postgreSQL Install Instructions.

 webtool to support opioid agonist/antagonist database management. 

---
<!-- GETTING STARTED -->
### Getting Started

This is an example of how you may give instructions on setting up your project locally.

PostgreSQL folder: data and load scripts for database.

OADB_Webtool.zip : compiled code for web tool.

Follow the instructions to install tools and run the scripts to set up the local webtool for opioid agonist/antagonist database.

### Prerequisites

PostgreSQL, NodeJS are required tools you need to set up the database and webtool and the instructions on how to install them. MacOS and Windows systems are recommended to use.

PostgreSQL version: >= 13.4

Nodejs version: >= 14.13.0


### Install PostgreSQL

As an open source object-relational database management system, PostgreSQL available for MacOS, and Windows.

##### Goal for each Operating System
The goal will be to run the following command successfully from the command line (regardless of the OS):

```psql -U postgres```

This should open the psql interactive shell and print a prompt that looks like:

```postgres=# ```

- ###### PostgreSQL installation

1). Download and install PostgreSQL versions later than 13.4 The installer is available here: https://www.postgresql.org/download/.
   
If the installation was successful, you should be able to run the following command. Your version should be later than 13.4.

    $ postgres -V
    postgres (PostgreSQL) 13.4
  
    
    
 ### Install NodeJS

For development, you will only need Node.js and a node global package, Yarn, installed in your environement.

- ##### Node installation

  Just go on [official Node.js website](https://nodejs.org/en/download/) and download the installer. Install Node version later than 14.13.0.


If the installation was successful, you should be able to run the following command. Your version number should be later than 14.13.0.

    $ node --version
    16.13.0

    $ npm --version
    8.10.0

---
<!-- INSTALL STEPS -->
## Set up oadb postgreSQL database and OADB webtool.
First download the repo.

1. Clone the repo. You can use the following git command to download the respository to your local machine.
   If you don't have git installed. Use the link: https://desktop.github.com/ to install github desktop first.
   ```sh
   git clone https://github.com/FANMISUA/OADB.git
   ```
   unzip webtool.zip to local folder.
   unzip *.csv.zip files to *.csv under postgreSQL.
   
   ![Screen Shot 2022-12-13 at 4 43 02 AM](https://user-images.githubusercontent.com/12943354/207296923-56cb6aaf-5ffc-45bc-8650-632defde27f3.png) 
   
   <p align="right">(<a href="#readme-top">back to top</a>)</p>
   
### Set up local database using PostgreSQL

2. Open Terminal and go to PostgreSQL folder. if your download the git repository under /tmp/github/. then you can run the following commands:
    
     
   ```sh
   cd /tmp/github/OADB/PostgreSQL
   ```
    
    <img width="496" alt="Screen Shot 2022-12-13 at 4 16 32 AM" src="https://user-images.githubusercontent.com/12943354/207291359-3eacd91e-e625-4315-ab71-1f504dd546ca.png">
    
    You can create your own path and change the command path to:  ``` cd $YOURPATH/OADB/PostgreSQL ```.
    
3. Create and Connect local Database oadb. 

   Change the path to your sql script absolute path.
   
   ```sh
   psql -U postgres  -f 'createDatabase.sql'
   ```
   
   create database scripts screenshot in MacOS.
      
   <img width="651" alt="Screen Shot 2022-12-13 at 4 29 20 AM" src="https://user-images.githubusercontent.com/12943354/207293822-4c2cb424-cfda-4b2f-be85-8676fa640db6.png">
   
   create database scripts screenshot in Windows.
   
   <img width="468" alt="image" src="https://user-images.githubusercontent.com/12943354/207303023-3a377d65-298e-4689-a9e3-d390315ecddf.png">

   
4. Create tables.

   ```sh
   psql -U postgres -d oadb -f 'createTable.sql'
   ```
   
   create table scripts screenshot in MacOS.
   
   <img width="468" alt="image" src="https://user-images.githubusercontent.com/12943354/207295016-9e4ad5e6-de1b-4dc8-a2a4-c6c4032fdc95.png">

   create table scripts screenshot in Windows.
   
   <img width="468" alt="image" src="https://user-images.githubusercontent.com/12943354/207303343-946ce9f5-ca2d-4de5-ad07-1ed1618bdae2.png">
   
   
5. Load data into tables.
   unzip the csv files to the same place for sql scripts.
   
   ```sh
   psql -U postgres -d oadb -f 'loadData.sql'
   ```   
   
   load data scripts screenshot in MacOS.
   
   <img width="468" alt="image" src="https://user-images.githubusercontent.com/12943354/207295200-9dbdf77c-4680-43a4-ba99-a15b038a8bcf.png">
  
   load data scripts screenshot in Windows.
   
   <img width="468" alt="image" src="https://user-images.githubusercontent.com/12943354/207303577-8b5ac622-3065-4782-b3a4-02b15ac912bb.png">

   
### Start the database server and webtool client.

6. open server folder under webtool and start the server.
   ```sh
   cd /tmp/github/OADB/webtool/server
   node index
   ```
   
   screenshot for starting the database server.
   
   <img width="560" alt="Screen Shot 2022-12-13 at 4 49 16 AM" src="https://user-images.githubusercontent.com/12943354/207297991-8f968582-6935-4d2b-8dc5-d09770d4cee6.png">


7. open client folder under webtool and start the client.
   ```sh
   cd /tmp/github/OADB/webtool/client
   npm run start
   ```

   run client script screenshot.
   
   <img width="379" alt="Screen Shot 2022-12-13 at 4 51 42 AM" src="https://user-images.githubusercontent.com/12943354/207300469-d2b9eee9-2497-4367-9afe-93e769b276a7.png">

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- USAGE EXAMPLES -->
## Webtool Frontpage
##### webtool frontpage screenshot.

![frontpage2](https://user-images.githubusercontent.com/12943354/204484652-573d7572-1713-4d02-96bd-c129c177bfb7.png)

##### webtool searchpage screenshot.

![frontpage1 (1)](https://user-images.githubusercontent.com/12943354/204484128-dc8fbe28-46f5-48c8-924b-7c153ad164c4.png)


<p align="right">(<a href="#readme-top">back to top</a>)</p>





<!-- CONTACT -->
## Contact

Fan Dong - [fan.dong@fda.hhs.gov]

Project Link: https://github.com/FANMISUA/OADB


<p align="right">(<a href="#readme-top">back to top</a>)</p>
