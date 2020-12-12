# ansible-aws-cfn

> Playground project to experiment with Ansible, AWS CloudFormation and Travis CI

[![Build Status](https://travis-ci.com/jeckscolari/ansible-aws-cfn.svg?branch=master)](https://travis-ci.com/jeckscolari/ansible-aws-cfn)

## About

<p align="center">
  <img src="images/aws_vpc.svg" width="80%">
</p>

This project contains all the code necessary to provision the infrastructure and configure a simple web application on AWS. My goal here is to automatically manage the infrastructure and configuration of an application from source code, minimizing manual intervention as much as possible.

The CloudFormation templates used to provision the network components (VPC, subnets, route tables and gateways) and the computing resources (load balancer, EC2 instances and Auto Scaling group) are in the `cfn` directory. The above image should give you a decent overview of the provisioned infrastructure. 

In the `ansible` directory contains all the Ansible related files (duh!), used to manage and orchestrate the creation of the infrastructure and the configuration of the web servers.

### Built With

-   [Ansible](https://www.ansible.com)
-   [AWS CloudFormation](https://aws.amazon.com/cloudformation)
-   [Travis CI](https://travis-ci.org)

## Acknowledgements

This project is heavily inspired by this awesome [article](https://programmaticponderings.com/2019/07/30/managing-aws-infrastructure-as-code-using-ansible-cloudformation-and-codebuild) by Gary Stafford.
