FROM alpine
RUN apk add --no-cache bash fortune-mod cowsay
WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh
EXPOSE 4499
CMD ["./wisecow.sh"]
