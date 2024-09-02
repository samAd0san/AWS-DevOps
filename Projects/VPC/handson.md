### Hands On
1. Create a custom VPC
2. on creating a custom VPC, aws will automatically provide Internet Gateway and NACL w/t subnet 
what we will do is create an ec2 instance and attach a security group and then we will play around
like giving permisstion to security grp but not giving to nacl and wise versa and so on.

### STEPS
1. Create VPC 
2. Create ec2 -> Network Setting (edit) using the custom vpc -> <br>
```ssh -i <kp.pem> ubuntu@<ip>```
3. Install a python an application on ec2 and run on port 8000 <br>
```python3 -m http.server 8000```
4. Give the permission in inbound rules in the security group as well 
check the permissions in NACL while navigating to vpc on dashboard.