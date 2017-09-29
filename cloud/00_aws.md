# Amazon Web Service (AWS)

### <a name="toc"></a>Table of Contents


[Create AWS Account](#create_aws_account)

[Create EC2 Instance](#create_ec2_instance)

[Install Anaconda on EC2](#install_anaconda)

[SSH to EC2](#ssh_ec2)

[S3](#s3)


---
### <a name="create_aws_account"></a> Create AWS Account
- Make sure to set up two factor authentication
- Create an alias for your account
    - this makes it easier to login for IAM users
- Create a IAM user with admin privileges
- Create Access Keys
    - these are required for S3

[Table of Contents](#toc)


---
### <a name="create_ec2_instance"></a> Create EC2 Instance
- Launch Instance
- Provide Name
- Chose Operating System
- Download Key
- Save Key

[Table of Contents](#toc)


---
### <a name="install_anaconda"></a> Install Anaconda on EC2
- Copy the web address for the version of Anaconda to install
- SSH into the AWS instance
- Use wget command to download the Anaconda installation
- Execute the install file using bash
- Install awscli on EC2 instance

```bash
wget https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
bash Anaconda-5.0.0-Linux-x86_64.sh
conda install -c conda-forge awscli
```

[Table of Contents](#toc)


---
### <a name="ssh_ec2"></a> SSH to EC2
```bash
ssh -i privte_key.pem default_user@public_DNS
```

#### Default User Names
| OS | Root Name |
|----|-----------|
| Amazon Linux | ec2-user |
| Centos | centos |
| Debian | admin |
| Fedora | ec2-user |
| RHEL | ec2-user or root |
| Ubuntu | ubuntu |

- Name are determined by the AMI provider.

[Table of Contents](#toc)


---
### <a name="s3"></a> S3
- S3 is the cloud file storage system
- Create a bucket
    - must have a unique name
- Use web page to upload files from host
- Use awscli to download file to instance

```bash
aws s3 cp s3://bucket-name.bucket/file_name ./
```

[Table of Contents](#toc)
