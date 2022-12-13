<a name="readme-top"></a>

# oadb_webtool
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
   
If the installation was successful, you should be able to run the following command.

    $ postgres -V
    postgres (PostgreSQL) 13.4
  
    
    
 ### Install NodeJS

For development, you will only need Node.js and a node global package, Yarn, installed in your environement.

- ##### Node installation

  Just go on [official Node.js website](https://nodejs.org/en/download/) and download the installer. Install Node version later than 14.13.0.


If the installation was successful, you should be able to run the following command.

    $ node --version
    16.13.0

    $ npm --version
    8.10.0

 Update `npm`.

    $ npm install npm -g


  Yarn installation.

    $ npm install -g yarn


---
<!-- INSTALL STEPS -->
## Set up oadb webtool Steps
First download the repo.

1. Clone the repo. You can also use the download zip botton to download the respository to your local machine.
   ```sh
   git clone https://github.com/FANMISUA/oadb_webtool.git
   ```
   unzip webtool.zip to local folder.
   unzip *.csv.zip files to *.csv under postgreSQL.
   
   
### Set up local database using PostgreSQL

1. Open Terminal and go to PostgreSQL folder. 
    
     $ cd 
    
2. Create and Connect Database. 

   Change the path to your sql script absolute path.
   ```sh
   psql -U postgres  -f 'C:/temp/data/test_oadb/createDatabase.sql'
   ```
   create database scripts screenshot.
   ![psqlinstall1](https://user-images.githubusercontent.com/12943354/204495005-0e5be89f-70e0-4e53-8066-9776338ad6f4.png)
   
2. Create tables.

   ```js
   psql -U postgres -d oadb -f 'createTable.sql'
   ```
   create table scripts screenshot.
   ![psqlinstall2](https://user-images.githubusercontent.com/12943354/204495032-67d5ea37-2f90-43ea-bf7d-a6aca3e00a5c.png)

3. Load data into tables.
   unzip the csv files to the same place for sql scripts.
   
   ```js
   psql -U postgres -d oadb -f 'loadData.sql
   ```   
   load data scripts screenshot.
   ![psqlinstall3](https://user-images.githubusercontent.com/12943354/204495052-fafb7cb1-3ac9-4cf0-a7c1-aaa80a5b7ed3.png)

   

### set up React web tool using Visual Studio Code

_Below is the example of how you can install and set up the webtool and database on your local machine._

5. Install modules for server.
   ```sh
   cd server
   yarn add express pg cors
   ```

6. Install modules for client.
   ```sh
   cd client
   yarn add react antd react-router-dom@6 ketcher-react @mui/icons-material @emotion/react @emotion/styled react-highlight-words smiles-drawer
   ```

7. Run server
   ```sh
   cd server
   nodemon index
   ```
   run server script screenshot.
   ![run server](https://user-images.githubusercontent.com/12943354/204495109-31318718-c268-46ee-9531-7b33bdcaaf09.png)
   
8. Run Client
   ```sh
   cd client
   npm run start
   ```
   run client script screenshot.
   ![run client](https://user-images.githubusercontent.com/12943354/204495136-a65d8345-1d49-4709-8ae9-d1debbbaa503.png)

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

Project Link: [https://github.com/FANMISUA/oadb_webtool](https://github.com/FANMISUA/oadb_webtool)


<p align="right">(<a href="#readme-top">back to top</a>)</p>
