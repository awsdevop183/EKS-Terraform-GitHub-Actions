resource "aws_instance" "jump" {
    ami = "ami-053b0d53c279acc90"
    disable_api_termination = false
    instance_type = "t2.medium"
    private_ip = "10.16.0.113"
    key_name = "madhukey-mac"
    disable_api_stop = false
    user_data = file("jump.sh")
    root_block_device {
        delete_on_termination = true
        volume_size = 12
        tags = {
            Name = "Jump-Server-EKS"
            PrivateIP = "10.16.0.113"
        }
    }
    # subnet_id = aws_subnet.public.id
    tags = {
        Name = "Jump-server-EKS"
        Prod = "True"
        PrivateIP = "10.16.0.113"
    }
    tags_all = {
        Name = "Jump-server-EKS"
        Prod = "True"
        PrivateIP = "10.16.0.113"
    }
    vpc_security_group_ids = [
        aws_security_group.jump-sg.id
    ]
}


output "jump-pip" {
    value =aws_instance.jump.public_ip
  
}