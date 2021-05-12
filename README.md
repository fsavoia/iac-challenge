# Challenge Info

IaC challenge for Cocus.

## File and Resource association

| File  | Resources  |
|---|---|
| [main.tf](main.tf)  | provider configuration   |
| [network.tf](network.tf)  | vpc, subnet, security groups, route tables, igw |
| [ec2.tf](ec2.tf)  | ec2 instances  |
| [variables.tf](variables.tf) | variables to be used within the module | 
| [output.tf](output.tf) | outputs config |

## Comments

While it's clear this is a test scenario, these are two quick wins for security that wouldn't be hard to implement and wouldn't alter the functionalities:

* Security Groups
  * It's safer to associate the inbound rule of the private SG (used for DB) to the SG used in the public instances, that way even if there are more servers in that subnet, if they don't have the correct security group
* Remote Access:
  * It's safer to user the SSM-agent to log into the instances, as it's better to manage and alter even after the instance is created. It also enables you to log into in the instances without a bastion host or changing the security groups rules
