## MYSQL - NGINX PROXY MANAGER - PHPMYADMIN

### 1. make sure ur folder is writable ✍️
```
sudo chown -R ur_user:www-data ur_folder_name/
```
### 2. copy .env.example to .env 🗃️
```
cp .env.example .env
```
and change ur env variables if needed
 
### 3. run the container 🚀

```
docker compose up
```

note : if u want to renew ur data, just delete the mysql and nginx-proxy-manager folder and run docker-compose up again
