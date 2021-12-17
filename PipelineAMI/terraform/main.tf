provider "aws" {
  region = "sa-east-1"
}

data "aws_ami" "ami-ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
  owners = ["099720109477"]

}

variable "vpc" {
  type = string

  default = "vpc-07cb5bd154e98fe7e"
}

variable "subnet" {
  type = string

  default = "subnet-0e8f392219ff33c64"
}

variable "key" {
  type = string

  default = "dev-turma3-adalberto"
}


resource "aws_instance" "jenkins" {
  subnet_id                   = var.subnet
  ami                         = data.aws_ami.ami-ubuntu.id
  instance_type               = "t2.large"
  key_name                    = var.key
  associate_public_ip_address = true
  tags = {
    Name = "ABBA - Pipeline AMI"
  }
  vpc_security_group_ids = ["${aws_security_group.jenkins.id}"]
  root_block_device {
    encrypted   = true
    volume_size = 32
  }
}

resource "aws_security_group" "jenkins" {
  name        = "acessos_pipeline_ami"
  description = "acessos para pipeline AMI"
  vpc_id      = var.vpc

  ingress = [
    {
      description      = "SSH from VPC"
      from_port        = 22
      to_port          = 22
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null,
      security_groups : null,
      self : null
    },
    {
      description      = "SSH from VPC"
      from_port        = 8080
      to_port          = 8080
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
      prefix_list_ids  = null,
      security_groups : null,
      self : null
    },
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"],
      prefix_list_ids  = null,
      security_groups : null,
      self : null,
      description : "Libera dados da rede interna"
    }
  ]

  tags = {
    Name = "Acessos_pipeline_ami"
  }
}


output "maquina" {
  value = [
    "resource_id: ${aws_instance.jenkins.id}",
    "private: ${aws_instance.jenkins.private_ip}",
    "public: ${aws_instance.jenkins.public_ip}",
    "public_dns: ${aws_instance.jenkins.public_dns}",
    "ssh -i ~/key.pem ubuntu@${aws_instance.jenkins.public_dns}"
  ]
}
