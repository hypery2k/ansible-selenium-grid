# Selenium Grid with Docker - Ansible Playbook  

This playbook can be used to create a Selenium Grid on one machine using Docker.
The purpose of this playbook is to remove all docker containers, and build up the grid from scratch every time this deploy runs. This way, it can also be used to refresh or update the grid.

With one simple playbook, you'll have your Selenium Grid running in no time:
```
./deploy.yml
```
Clone the repo to your Grid machine and run the above command.

## Requirements:
- Ansible
- Git

## Features:

- Easy Setup  
The playbook takes care of everything between the installation of prerequisites  
and the spinning up the Grid itself. That makes the setup smooth and easy.

- Grid Maintenance  
Every time it runs, it gets the latest Docker images, and builds the Grid from  
scratch. This ensures a fresh and updated Grid every time.
