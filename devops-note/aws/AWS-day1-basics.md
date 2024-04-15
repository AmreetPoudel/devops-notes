
# AWS Practical Learning Notes

## Introduction

These notes summarize key AWS concepts and services explored through hands-on practice. They are intended for beginners starting their journey in cloud computing with Amazon Web Services.

## EC2 Instances

Amazon EC2 provides resizable compute capacity in the cloud. It's designed to make web-scale cloud computing easier for developers.

### Key Points

- **Instances**: Virtual servers in the cloud.
- **AMI**: Defines the initial software that will be on an instance when launched.
- **Instance Types**: Various configurations of CPU, memory, storage, and networking capacity for your instances.
- **Security Groups**: Acts as a virtual firewall for your instance to control inbound and outbound traffic.

## Virtual Private Cloud (VPC)

A VPC is a segregated section of the cloud where you can launch AWS resources in a virtual network that you define.

### Key Points

- **Subnets**: Divides a VPC's IP address range into smaller segments. Can be public or private.
- **Internet Gateways (IGW)**: Connects your VPC to the internet, allowing communication between instances in your VPC and the internet.
- **Route Tables**: Determine where network traffic from your VPC is directed.
- **NAT Devices**: Allows instances in a private subnet to connect to the internet or other AWS services but prevents the internet from initiating a connection with those instances.

## Security Groups and Network ACLs

### Security Groups

- Controls inbound and outbound traffic to instances.
- Operates at the instance level.
- Supports "allow" rules only.

### Network ACLs

- An additional layer of security that acts as a firewall for controlling traffic in and out of one or more subnets.
- Operates at the subnet level.
- Supports allow and deny rules.

## Connectivity and Networking

Instances within the same VPC can communicate with each other. The ability to connect between different subnets within the same VPC is facilitated by route tables and the VPC's internal routing.

### Key Points

- **Default VPC**: Every AWS account is provided with a default VPC that is configured with a default subnet in each Availability Zone.
- **Ping Between Instances**: Instances in the same VPC, even in different subnets, can ping each other by default, assuming security group and NACL configurations allow it.

## EC2 Instance Setup and SSH Access

Setting up an EC2 instance involves selecting an AMI, an instance type, configuring the instance details, adding storage, configuring security groups, and finally launching the instance.

### SSH Access

- Secure Shell (SSH) is used for secure access to your EC2 instances.
- Requires the use of a key pair (`.pem` file) and the instance's public IP address.
- Common SSH command format: `ssh -i /path/to/your-key.pem ec2-user@your-instance-public-ip`

## Best Practices

- **Resource Management**: Terminate instances and release resources you no longer need to avoid unnecessary charges.
- **Security**: Always configure security groups and NACLs to allow only the necessary traffic to and from your instances.
- **Documentation**: Maintain clear documentation of your AWS configurations and architecture for future reference and troubleshooting.

---

These notes are based on practical exercises and might not cover all theoretical aspects of the AWS services mentioned.
