# Invoke app via docker-compose
echo 'Initializing docker-compose'
docker-compose build --no-cache
docker-compose down
docker-compose up -d >> docker-liups.log

echo 'Auto cleaning...'
docker system prune -a

echo 'You are all done! Enjoy!'
