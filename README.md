
This project is just to showcase the usage of containers for GUI automation. The container images and the Selenoid framework is the work of Aerokube. 

**Docker File**
The docker file attached is just to showcase the installation of nightwatchjs framework and its pre-requisities.

**docker-compose.yml**
The compose file can be used to download selenoid, selenoid-ui images to your machine. Make sure the browsers.json file is also copied to your local directory before executing the docker-compose command.

**testframework**
The directory contains a sample test framework that is based on nightwatchjs and it uses the selenoid containers to run the tests.

**How To**
- Create a local directory on your machine, let's call demo
- Copy the docker-compose.yml and browsers.json to the 'demo' directory
- Install docker and docker-compose if it is not done
- Execute 'docker-compose up -d' inside the 'demo' directory. Download of selenoid and the requested browsers happen and the selenoid and selenoid-ui containers are started
- To make sure the containers are running, execute 'docker-compose ps' and you should see two containers
- To run the sample tests, download the archive file under 'testframework' directory and extract it
- Once download is complete navigate to the test directoy and execute 'npm install', so that all required npm packages are downloaded
- Download the latest chromedriver and place it under 'lib' directory
- Execute './node_modules/nightwatch/bin/nightwatch ./src/test/login.js -e chrome' and your tests will start a chrome container and run the tests. You can check it by logging in to 'http://localhost:8080'
