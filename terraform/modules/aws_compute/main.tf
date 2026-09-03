terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = version = "-> 5.0"
    }
  }
}

resource "aws_security_group" "linux_core" {
  name        = "production-linux-core-sg"
  description = "Managed baseline infrastructure security controls"

  ingress {
    description = "Allow inbound secure administrative transport"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    description = "Allow global outbound transit"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

