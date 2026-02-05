# Use lightweight Nginx image
FROM nginx:stable-alpine
 
# Copy your built dist/ folder to Nginx html folder
COPY dist/ /usr/share/nginx/html
 
# Expose port 80
EXPOSE 80
 
# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
