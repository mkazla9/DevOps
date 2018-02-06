sleep 40
public_IP=$(cat /tmp/properties/ip.txt | xargs)
ssh -i /var/lib/jenkins/.ssh/key.pem -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ec2-user@${public_IP} "sudo yum update -y && sudo yum install -y docker && sudo service docker start && sudo usermod -a -G docker ec2-user && rm -rf /home/ec2-user/docker && mkdir -p /home/ec2-user/docker && sudo yum -y install python-pip && sudo pip install awscli --upgrade --user && aws s3 sync s3://mukul/  /home/ec2-user/docker"
