Cloudformation templates to create multi-tier multi-zone vpc.
Please do the following:
- Make sure you delete all stacks including vpc and start clean
- Create stack stg01-vpc1 with file rover-vpc-v1.template (use output as input to following stack)
- Create stack stg01-vpc1-bastion1 with file rover-bastion1-v1.template
- Create stack stg01-vpc1-appserver1 with file rover-appserver1-v1.template (appcast)
- Create stack stg01-vpc1-appserver2 with file rover-appserver1-v1.template (status)
- Create stack stg01-vpc1-appserver3 with file rover-appserver1-v1.template (engine)
