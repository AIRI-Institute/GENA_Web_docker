### Установка приложения
* git clone https://gitlab.2a2i.org/bioinformatics/dnalm-docker.git
* make app-init  
  *скачивается и собирается frontend приложение, скачивается backend приложение, создаётся .env файл из примера*
* положить в проект файл с весами backend/src/spliceai/data/checkpoints/spliceai/model_best.pth
* docker-compose up -d

### Команды для работы с frontend приложением
*Выполняются в контейнере node (docker-compose exec node sh или make app-node)*
* make app-build - сборка приложения (доступно и из корня проекта)
* npm i && npm run build - сборка приложения
* npm run build - сборка приложения, если просто npm i уже запускался

### Конфигурационные файлы приложения
./.env - настройка портов docker приложения:  
при изменении необходимо перезапускать контейнеры
* NGINX_PORT=80 (порт nginx)

### Внутренние порты приложения
* Nginx: 80
* Backend: 3000

### Обновление моделей
*Для обновления кода моделей из репозитория и перезапуска всех контейнеров необходимо запустить команду:*
* sudo make backend-restart

### Получение логов
*Для получения логов по конкретной модели необходимо запустить команду*
* sudo docker-compose logs --tail=N containerName

  
*где N - это количество строк с конца для вывода(N = 100 - 100 последних строк из лога), containerName - название 
контейнера (названия контейнеров можно посмотреть в docker-compose.yaml в корне проекта)* 