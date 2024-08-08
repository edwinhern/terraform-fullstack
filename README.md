# terraform-fullstack

Goal is to make a 2-tier VPC.

We have two availability zones; each will have a:

1. Public Subnet (Contains the UI hosted in a ECS)
2. Private Subnet (Contains Database in a RDS)

We will build our own VPC to reduce unused resources.

Will Try to figure out how to connect a docker image to host our ECS

1. We could use env variable provide a URL to link to our database
