
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY index.html .
COPY index.css .
COPY index.js .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
