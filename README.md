# Check-Eat partner api

Check-Eat partner api uses typescript as main language and express js to catch and answer http requests using a token-based authentication.

## Features

- Create your restaurants, turn on and turn off your stores
- Add users to your store and manage it 
- Create or update your menus and products
- Review your sales

## Installation

Check-Eat partner api requires [Node.js](https://nodejs.org/) v20.2.0 to run. To code your features we would suggest to download [visual studio code](https://code.visualstudio.com/download). 

### Dependencies 

#### Windows
##### mingw
Download and install [mingw64](https://www.mingw-w64.org/downloads/#msys2), this tool simulates a linux environment and is able to run bash scripts. By default define the path installation on your root. 
##### node.js
Once you have downloaded mingw64 open a terminal typing out "mingw64" on windows search bar and type out the following commands to install node.js: 
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```
Close the MINGW64 terminal and reopen it to load the NVM script.
Verify that NVM is installed correctly by running the command:
```sh
nvm --version
```
Install version 20.2.0 by running the command: 
```sh
 nvm install 20.2.0
```
To check node is installed run following command: 
```sh
 node --version
```
For npm: 
```sh
npm --version
```
##### git 
Download and install [git bash](https://git-scm.com/download/win) to enable git. Click continue and continue option to finish it. 

#### Linux
##### node.js
Install NVM by running the following command:
```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```
Close and reopen your terminal, or run the following command to apply the changes:
```sh
source ~/.bashrc
```
This ensures that the NVM command is available in your terminal session.
Install Node.js 20.2.0 using NVM:
```sh
nvm install 20.2.0
```
Set Node.js 20.2.0 as the default version:
```sh
nvm alias default 20.2.0
```
To check node is installed run following command: 
```sh
 node --version
```
For npm: 
```sh
npm --version
```
##### git
By default linux has git installed, you don't need to install it. 

#### macOS
##### node.js
For macOS we would suggest to use homebrew to resolver your dependencies so to install node run following command: 
```sh
brew install node@20.2.0
```
##### git
By default macOS has git installed, you don't need to install it. 

### Final steps
#### Clone repo
Before downloading our repo you need to create an app password on [bitbucket dashboard](https://bitbucket.org/account/settings/app-passwords/) (we assumed that previously you have opened an account there). Once you have created an app password you can add download the repo using this command: 
```sh
git clone https://[your-user-name]:[your-app-password]@bitbucket.org/checkeatmx/check-eat-customer-api.git
```
#### Move to project folder
To move to project folder you need to run this command: 
```sh
cd check-eat-customer-api
```
### Install project dependencies 
Since we are using node to develop customer dashboard we need to install npm dependencies so to install those ones you can run setup script placed in root folder, to run this type out following command:
```sh
chmod +x setup.sh
```
This adds execution permissions to our script .
Finally run setup script to config git email and name, git hooks and install npm dependencies. 
```sh
./setup.sh
```
### Run project 
Since project uses express,js as rest framework, you can run following comming to star the server:
```sh
npm run dev:serve
```
To build and convert project to js, you can run following command: 
```sh
npm run dev:build
```

## Workflow to integrate your changes into the project
We follow git flow to integrate changes in the project, we have some prefix to create a branch:
- **bugfix**: this branch includes fixes over some feature or flow.
- **feature**: this one adds a new workflow. 
- **release**: to release a new version of the api. 

Finally you should add the ticket number to keep consistence in this flow. To create a branch we've included an example: 
```sh
git checkout develop 
```
It moves to develop branch, that branch always receives development changes so you should create your branch from there. 
```sh
git checkout -b feature/CEWD-1
```
It creates a new branch following prefix given previously.