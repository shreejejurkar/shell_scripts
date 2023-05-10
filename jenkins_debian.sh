#Install Java

sudo apt update -y
sudo apt install openjdk-11-jre -y
java -version

#Install jenkins

curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install jenkins -y

#enable the Jenkins service to start at boot with the command:

sudo systemctl enable jenkins

#start the Jenkins service with the command:

sudo systemctl start jenkins

#check the status of the Jenkins service using the command:

sudo systemctl status jenkins
