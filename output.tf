output "vpc_id" {
  value = aws_vpc.main.id
}

output "ec2_private" {
  value = [aws_instance.private.id, aws_instance.private.private_ip]
}

output "ec2_public" {
  value = [aws_instance.public.id, aws_instance.public.public_ip]
}
