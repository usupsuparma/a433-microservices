#  mengambail base image dari node dengan tag 14-alpine
FROM node:14-alpine
# membuat folder app di dalam container
WORKDIR /app

#  copy semua file dari host ke container dalam hal ini ke folder app
COPY . .

# env menggunakan production
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan npm install dan npm run build
RUN npm install --production --unsafe-perm && npm run build

# contianer mengekpos port 8080 dari contianer
EXPOSE 8080

# setelah container di jalankan makan cmd npm run start di jalankan
CMD ["npm", "run", "start"]