# resource "aws_security_group" "jump-sg" {
#     description = "JumpSG"
#     vpc_id = module.eks.aws_vpc.vpc.id
#     name = "jump-sg"
#     tags = {
#         Name = "Jump-SG"
#         CreatedBy = "Terraform"
#     }
#     tags_all = {
#         Name = "Jump-SG"
#         CreatedBy = "Terraform"
#     }
#     egress = [
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 0
#         ipv6_cidr_blocks = []
#         prefix_list_ids = []
#         protocol = "-1"
#         security_groups = []
#         self = false
#         to_port = 0
#         }
#     ]
#     ingress = [
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 443
#         ipv6_cidr_blocks = ["::/0"]
#         prefix_list_ids = []
#         protocol = "tcp"
#         security_groups = []
#         self = false
#         to_port = 443
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow traffic from public internet"
#         "from_port": 80
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 80
#         },
#          {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow traffic from public internet"
#         "from_port": 3306
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 3306
#         },
#         {
#         "cidr_blocks": [
#             "0.0.0.0/0"
#         ]
#         "description": "Allow SSH from public internet"
#         "from_port": 22
#         "ipv6_cidr_blocks": []
#         "prefix_list_ids": []
#         "protocol": "tcp"
#         "security_groups": []
#         "self": false
#         "to_port": 22
#         },
#         {
#         cidr_blocks = [
#             "0.0.0.0/0"
#         ]
#         description = ""
#         from_port = 0
#         ipv6_cidr_blocks = []
#         prefix_list_ids = []
#         protocol = "-1"
#         security_groups = []
#         self = false
#         to_port = 0
#         }
#         #  {
#         # cidr_blocks = [
#         #     "0.0.0.0/0"
#         # ]
#         # description = ""
#         # from_port = 0
#         # ipv6_cidr_blocks = []
#         # prefix_list_ids = []
#         # protocol = "-1"
#         # security_groups = ["test-sg"]
#         # self = false
#         # to_port = 0
#         # }

#     ]
# }