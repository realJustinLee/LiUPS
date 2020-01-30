# Invoke app via docker-compose
echo 'Initializing docker-compose'
docker-compose build --no-cache
docker-compose down
docker-compose up -d >> docker-v2.log
echo 'Initialized docker-compose'