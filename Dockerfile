FROM node:latest as react-build
WORKDIR /app
COPY . ./
RUN yarn
RUN yarn build
EXPOSE 9000 9001
CMD ["./run.sh"]
CMD ["yarn", "serve", "-p", "9000"]