#!/bin/bash
# Update OS and install Apache
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Download the private image from S3
# Replace 'your-bucket-name' with your actual bucket
aws s3 cp s3://your-bucket-name/my-image.png /var/www/html/index.png

# Create a basic HTML page to display the image
echo "<html><body><h1>AWS SAA: Secure S3 Integration Success</h1><img src='index.png'></body></html>" > /var/www/html/index.html
