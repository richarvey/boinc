## About

A simple boinc container built on debian stretch (slim). This container will run the boinc client and by default connect into the world community grid. The dfault credentials are for richarvey and the weak key is provided. See "Running" for information on overriding these variables.

## Pulling the Container

    docker pull richarvey/boinc

## Running

There are multiple ways to run the container

### Default mode

This will run the container and contribute to the container team:

    docker run -d --name boinc richarvey/boinc:latest

To enable network connectivity in order to use boinccmd or boinc manager from another host:

    docker run -d --name boinc -P richarvey/boinc:latest

Be warned this opens control of boinc up to anyone on the network without a password!

### Custom Project and Keys

To run with your own credentials:

    docker run -d --name boinc richarvey/boinc:latest <YOUR PROJECT URL> <YOUR KEY>

and with networking:

    docker run -d --name boinc -P richarvey/boinc:latest <YOUR PROJECT URL> <YOUR KEY>

## Join my container team

Please my container our team and help us contribute to the world community grid.

http://www.worldcommunitygrid.org/team/viewTeamInfo.do?teamId=0WGND0WR52

If you're not registered for the world community grid please do so here:

http://www.worldcommunitygrid.org/reg/viewRegister.do?teamID=0WGND0WR52

