# Amazon Web Service (AWS)

### <a name="toc"></a>Table of Contents


[Create AWS Account](#create_aws_account)

[Create EC2 Instance](#create_ec2_instance)

[SSH to EC2](#ssh_ec2)


---
### <a name="create_aws_account"></a> Create AWS Account
- Make sure to set up two factor authentication
- Create an alias for your account
    - this makes it easier to login for IAM users
- Create a IAM user with admin privileges

[Table of Contents](#toc)


---
### <a name="create_ec2_instance"></a> Create EC2 Instance
- Launch Instance
- Provide Name
- Chose Operating System
- Download Key
- Save Key

[Table of Contents](#toc)


[Install Anaconda on EC2](#install_anaconda)

---
### <a name="install_anaconda"></a> Install Anaconda on EC2
- copy the web address for the version of Anaconda to install
- SSH into the AWS instance
- use wget command to download the Anaconda installation
- execute the install file using bash

```bash
wget https://repo.continuum.io/archive/Anaconda3-5.0.0-Linux-x86_64.sh
bash Anaconda-5.0.0-Linux-x86_64.sh
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



