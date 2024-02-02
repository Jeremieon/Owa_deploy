region = "us-east-1"
ami = "ami-0277155c3f0ab2930"
instance_type = "t2.micro"
user_data = <<-EOT
                #!/bin/bash
                sudo yum update -y
                sudo yum install -y docker
                sudo service docker start
                sudo docker pull bkimminich/juice-shop
                sudo docker run -d -p 80:3000 bkimminich/juice-shop
                EOT
instance_name = "owasp-Juice-Shop"