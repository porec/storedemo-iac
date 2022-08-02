
resource "aws_vpc_endpoint" "vpce-ssm" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.ssm"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-ssm-security-group.id]
    tags = {
    Name = "Systems Manager Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY

    private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-ec2-messages" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.ec2messages"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-ec2messages-security-group.id]
    tags = {
    Name = "EC2 Messages Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
    private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-ec2" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.ec2"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-ec2-security-group.id]
    tags = {
    Name = "EC2 Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
    private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-ssm-messages" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.ssmmessages"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-ssmmessages-security-group.id]
    tags = {
    Name = "SSM Messages Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
    private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-logs" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.logs"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-logs-security-group.id]
    tags = {
    Name = "Cloudwatch Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-ec2-imagebuilder" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.imagebuilder"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-imagebuilder-security-group.id]
    tags = {
    Name = "Image Builder Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-secrets" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.secretsmanager"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-secretsmanager-security-group.id]
    tags = {
    Name = "Secrets Manager Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
  private_dns_enabled = true
}
resource "aws_vpc_endpoint" "vpce-kms" {
  vpc_id            = data.aws_vpc.internal.id
  service_name      = "com.amazonaws.eu-central-1.kms"
  vpc_endpoint_type = "Interface"
  subnet_ids = data.aws_subnet_ids.internal_private.ids
  security_group_ids = [aws_security_group.vpce-kms-security-group.id]
    tags = {
    Name = "KMS Endpoint"
  }
  policy = <<POLICY
  {
  "Statement": [
    {
      "Action": "*",
      "Effect": "Allow",
      "Resource": "*",
      "Condition": {
        "StringEquals": {
          "aws:SourceVpc": "${data.aws_vpc.internal.id}"
        }
      },
      "Principal": "*"
    }
  ]
  }
  POLICY
  private_dns_enabled = true
}
