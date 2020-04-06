FROM node:latest as react-build
WORKDIR /app
COPY . ./
RUN yarn
RUN yarn build
EXPOSE 9000
CMD ["./run.sh"]
CMD ["yarn", "serve"]