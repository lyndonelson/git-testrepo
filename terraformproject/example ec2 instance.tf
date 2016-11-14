resource "aws_instance" "MY-FIRST-LINUX-INSTANCE" {
    ami                    = "ami-b51a54c6"
    availability_zone      = "eu-west-1a"
  ebs_optimized          = false
          instance_type          = "t2.medium"
          placement_group        = ""
  monitoring             = false
  key_name               = "REFERENCE-AN-SSH-KEY" # TODO
subnet_id              = "" # TODO
  vpc_security_group_ids = [""] # TODO
  iam_instance_profile   = "" # TODO OPTIONAL
  private_ip             = "" # TODO
  source_dest_check      = true
  user_data              = "" # OPTIONAL

 tags {
    Name       = "MY-FIRST-LINUX-INSTANCE"
    Script     = "Terraform"
  }
}