# CV Generator
## Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)
## General Info
***
This is a project build in ruby whose purpose is to provide the user an easy way to create a curriculum vitae.
## Technologies
***
A list of technologies used within the project:
* [Ruby](https://www.ruby-lang.org/en/): Version 3.3.5
* [Sinatra](https://rubygems.org/gems/sinatra): Version 4.0.0
* [Webrick](https://rubygems.org/gems/webrick): Version 1.9.0
* [Rackup](https://rubygems.org/gems/rackup): Version 2.2.0
* [Prawn](https://prawnpdf.org/): Version 2.5.0
## Installation
***
There are two methods to install this project.
### Via GitHub
#### Using Docker
Verify you are running Docker or Docker Desktop and open a terminal in the folder you want to install the application.

Copy the repository
```
git clone https://github.com/nava2105/cv_generator.git
```
Enter the directory
```
cd ../cv_generator
```
Build and run the container
```
docker-compose up --build
```
Open a browser and enter to
[http://localhost:4567](http://localhost:4567)
#### Not using Docker
Verify you are using Ruby version 3.3.5
```
ruby -v
```
Copy the repository
```
git clone https://github.com/nava2105/cv_generator.git
```
Enter the directory
```
cd ../cv_generator
```
Compile the project directly form mvn
```
ruby app.rb
```
Open a browser and enter to
[http://localhost:4567](http://localhost:4567)
### Via Docker-hub
Pull the image from Docker-hub
```
docker pull na4va4/cv_generator
```
Start a container from the image
```
docker run -p 4567:4567 na4va4/cv_generator
```
Open a browser and enter to
[http://localhost:4567](http://localhost:4567)
