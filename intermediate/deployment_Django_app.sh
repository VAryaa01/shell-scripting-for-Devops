
#!/bin/bash

<< task

Deploy a Django app and handle the code for error
task

code_clone () {
        echo "cloning the Django app..."
        git clone https://github.com/LondheShubham153/django-notes-app.git

}

install_requirement () {
        echo "installing dependancies"
        sudo apt-get install docker.io nginx -y
        sudo apt-get update -y
}

Required_restarts () {
	sudo chown $USER /var/run/docker.sock
        sudo systemctl enable docker
        sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
        cd django-notes-app || exit
        docker build -t notes-app .
        docker run -d -p 8000:8000 notes-app:latest
}
echo "*****************************************DEPLOYMENT START*********************************************************"

if ! code_clone; then
	echo "the code directory already exests"
	cd django-notes-app
fi

if ! install_requirement; then
	echo "installation failed"
	exit 1
fi

if ! Required_restarts; then
	echo "System Fault Identified"
	exit 1
fi

if ! deploy; then
	echo "Deployment failed, mailing the admin"
	#sendmail
fi

echo "*****************************************DEPLOYMENT Done*********************************************************"
