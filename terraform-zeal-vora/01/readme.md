# In main aws account we are create resource is

- Create `ec2`.
- Create `new sg` in `defaule-vpc` and assign in `ec2`.
- Manage `ingress` & `egress` rules for ec2.
- Install anything based on script which is precent in `user_data`.

##  Need to things Before INIT
1) Need to create s3-private manually in s3 console.
2) Need to configure backedn in prpvider.tf
3) after attach terraform-backend need to init for update state in s3.

## Extra things.
- In this case we use all value as variable ( not any hardcoded value ).
- We are create SSH key manually before deploy resource with terraform.

------------- NEED TO DO ---------------

- In directory of ansible i want to excute file after ec2 up.