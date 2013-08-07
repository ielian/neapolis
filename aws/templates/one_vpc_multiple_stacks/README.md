Cloudformation templates to create multi-tier multi-zone vpc.

one account can host multiple environments, each environment can have multiple vpc (typically one). Each vpc is divided in multiple stacks:
1- network including nat servers stack
2- bastion server stack
3- appserver autoscale stacks (one for each application component).

To create the stacks do the following:
- Create stack stg01-vpc1 with file rover-vpc-v1.template (input env name)
- Use output vpcid and subnets as input to following stack
- Create stack stg01-vpc1-bastion1 with file rover-bastion1-v1.template
- Create stack stg01-vpc1-appserver1 with file rover-appserver1-v1.template (appcast)
- Create stack stg01-vpc1-appserver2 with file rover-appserver1-v1.template (status)
- Create stack stg01-vpc1-appserver3 with file rover-appserver1-v1.template (engine)
