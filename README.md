# Ant Toolkit
[![build-and-push-image](https://github.com/lonecalvary78/ant-toolkit/actions/workflows/build-and-push.yaml/badge.svg)](https://github.com/lonecalvary78/ant-toolkit/actions/workflows/build-and-push.yaml)


## Introduction
This is the conatiner image of build toolkit I created for anyone who works their own java project when they were still using the Apache Ant

## Usage
To use the image on the build stage, you follow the sample below
```docker
FROM ghcr.io/lonecalvary78/ant-toolkit:11 AS build
WORKDIR /builder/
COPY src /builder/src
COPY build.properties /builder/
COPY build.xml /builder/
RUN ant {Put the required task for build your project here} 

...

```

Please note the steps to build your project should follow the way that you did. So it is not always the same with the sample that shown above 

## Available version(s)
<ul>
    <li> 11 (used OpenJDK 11.0.16)</li>
<ul>

