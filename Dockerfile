# Sử dụng hình ảnh nginx chính thống từ Docker Hub
FROM nginx

# Sao chép tệp cấu hình tùy chỉnh (nếu có)
# COPY nginx.conf /etc/nginx/nginx.conf

# Sao chép tệp trang web tĩnh (ví dụ: index.html)
COPY index.html /usr/share/nginx/html

# Expose cổng 80 để cho phép truy cập web
EXPOSE 80

# Command để chạy Nginx khi hình ảnh được triển khai
CMD ["nginx", "-g", "daemon off;"]
