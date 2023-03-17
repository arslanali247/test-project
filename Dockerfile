FROM php:7.0-apache
COPY . .
EXPOSE 8001
CMD ["runserver","0.0.0.0:8001"]
