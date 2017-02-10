# deploy_linuxauditd

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with deploy_linuxauditd](#setup)
    * [What deploy_linuxauditd affects](#what-deploy_linuxauditd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with deploy_linuxauditd](#beginning-with-deploy_linuxauditd)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)

## Description

Puppet module to deploy splunk app Linux Auditd to splunk indexer

## Setup

### What deploy_linuxauditd affects 

This module will deploy the files to /opt/splunk/etc/apps/linux-auditd and
/opt/splunk/etc/apps/TA_linux-auditd

### Setup Requirements 

Requires splunk to be installed

### Beginning with deploy_linuxauditd

include deploy_linuxauditd


## Reference

https://github.com/doksu/splunk_auditd/wiki/Installation-and-Configuration

## Release Notes/Contributors/Etc.

Deploys the Splunk App https://github.com/doksu/splunk_auditd version 2.0.3