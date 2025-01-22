output "instance_ips" {
  value = aws_instance.app_server.*.public_ip
}

output "ssh_commands" {
  value = join("\n", formatlist("ssh -i C:/Users/g2r/Downloads/terraform-ssh-key ec2-user@%s", aws_instance.app_server.*.public_ip))
}

output "bucket-s3" {
  value = aws_s3_bucket.example_bucket.bucket
}