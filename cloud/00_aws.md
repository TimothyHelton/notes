# Amazon Web Service (AWS)

### <a name="toc"></a>Table of Contents


[Create AWS Account](#create_aws_account)

[Create EC2 Instance](#create_ec2_instance)

[CRON Job with Anaconda](#cron_anaconda)

[Install Anaconda on EC2](#install_anaconda)

[SSH to EC2](#ssh_ec2)

[S3](#s3)

[Update Ubuntu](#update_ubuntu)


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
### <a name="cron_anaconda"></a> CRON Job with Anaconda
- cron jobs
    - use .sh by default
    - the last line needs to be a comment
    - if doing more commands than just calling the Python file to execute then
    wrap the calls in a bash file
        - the Python file must be **executable**
    - set up the cron job for a user with the command
        - **crontab -e**
    - if an error occurs in the crontab execution then an email is sent to 
    this location
        - **/var/mail/<user_name>**
    - the PATH variable must be redefined to include
        - the Anaconda virtual environment bin directory
        - the directory with the Python file
        - **by default the cron job is executed in the user's home directory**

Example crontab job:    
```bash
SHELL=/bin/bash
# m  h  dom mon dow   command
PATH=/home/ubuntu/anaconda3/envs/<env_name>/bin:/home/ubuntu/<script_loc>:$PATH
50   23 *   *   *     /bin/bash wrapper.sh &> wrapper.log
#
```

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


---
### <a name="update_ubuntu"></a> Update Ubuntu
```bash
# Fetches the list of available updates
sudo apt-get update

# Strictly upgrades the current packages
sudo apt-get upgrade

# Installs updates (new ones)
sudo apt-get dist-upgrade
```

[Table of Contents](#toc)

