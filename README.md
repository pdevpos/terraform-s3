# terraform-s3

IAM:
====
Identity Access Management

* Authentication verifies if an individual or entity is part of the system.
* Authorization determines whether an individual or entity has access to specific resources within the system.
* IAM is not exclusive to AWS; it's a universal concept applicable across various systems and organizations, focusing on managing access and permissions effectively. The main components of IAM include:
* user
* group
* policy

Components
==========
  User
  Represents either a human user or a system/service account within the system.
  Group
  A collection of users sharing similar roles, responsibilities, or permissions, facilitating easier management of access rights.
  Permissions
  Defines what actions a user or group is allowed to perform, typically outlined in a policy document.
  Resource:
  =========
  The assets or services within the system, such as EC2, S3, IAM, etc., that users or groups interact with. Resources are generally represented as nouns.
  Action

How to create a user in an IAM?
1. click on "Users" on left side pane
2. click on create user
3. enter username
4. click on next

How to create custom policy in an IAM?
policy is nothing giving permissions to access the resource of specific user.
1. click on "Policies"
2. choose which service to give permission of the specific user
3. click on List
choose "ListAllMyBuckets" and "ListBucket"
4. click on the above two check box
here "ListAllMyBuckets" is nothing but to give permission to access all the list of buckets
ListBucket is nothing but to allow the objects/elements from specific bucket
5. to click "ListBucket" add ARN(Amazon Resource Name) for the specific bucket name
6. click on RequestConditions if required
7. click on next

How to attach policy to the specific user?
1. choose and click on specific user 
2. click on permissions
3. click on attach policy to the specific user
4. click on next

how to create group and attach the users to the group?
1. click on "UserGroups"
2. enter name
3. Add users to the group
3. Attach policy to the group instead of giving policy to each user
4. click on "create user group"

advantage of creating a group:
==============================
to give policy to each and every user it is difficult if there are list of users.
so to add all these users to the usergroup and provide policy to the group
then each user under group can allow to access policy.

Resource based policy:
======================
to provide policy through resource based
choose for which resource to provide policy
ex:
s3 bucket
choose s3 bucket name
click on edit
click on bucket policy
to attach policy to the resource also,how to do
=================================================
1. click s3 bucket name
   2.click on permissions
   3.click on "edit"
   4.in bucket policy,click on policy generator
   5.its open amazon web service
   there is a difference in "identity based policy" and "resource based policy" is "principal"
   to attach policy for single user with single resource only
   to provide permissions for cmd line for specific user:

{
"Id": "Policy1727023308614",
"Version": "2012-10-17",
"Statement": [
{
"Sid": "Stmt1727023278244",
"Action": [
"s3:ListBucket"
],
"Effect": "Allow",
"Resource": "arn:aws:s3:::bucketinfo23",
"Principal": {
"AWS": [
"arn:aws:iam::041445559784:user/joindevops"
]
}
}
]
}

1.Install aws cli
2.go to cmd prompt
3. to create access key and secret for specific user
   console----> username and password
   API/cmd line -----> token based authentication for automation
   for specific user,create access key,choose command line interface
   click on check box
   click on next button
   Retrieve access keys: copy access key and secret key access,click on Done
   aws configure
   Access key
   secret key
   s3 ls
   s3 ls "bucket name"


inline policy:
==============
there is a short term task or emergency task...
if a user needs to perform he should have that policy
team leader asked to add some files into that bucket "bucketinfo23"
inline is one to one relation,policy attached to the entity user/group/role can't be viewable in policies section.
it can't be allocated to others.
it will deleted once the entity is deleted....
