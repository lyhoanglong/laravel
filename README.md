Set to setup docker
=====

1. Edit environment for your project in file src/.env
2. Migrate database
```
chmod +x script.sh
./script.sh artisan migrate
```
3. Start docker
```
chmod +x start.sh
./start.sh
```