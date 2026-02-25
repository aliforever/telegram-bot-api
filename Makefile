push:
	# 1. First, log into Docker Hub if you aren't already:
	# docker login
	# 2. Build and tag the Docker image natively:
	docker build -t alierror/telegram-bot-api-custom:latest /home/ali/telegram-bot-api
	# 3. Finally, push it to your Docker Hub repository:
	docker push alierror/telegram-bot-api-custom:latest