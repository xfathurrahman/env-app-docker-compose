# MYSQL - NGINX PROXY MANAGER - PHPMYADMIN

# 1. make sure ur folder is writable
ex : sudo chown -R ur_user:www-data ur_folder_name/
# 2. copy .env.example to .env (cp .env.example .env)
- change ur env variables if needed
# 3. docker compose up

note : if u want to renew ur data, just delete the folder mysql and nginx-proxy-manager folder and run docker-compose up again
