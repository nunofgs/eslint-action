FROM node:10

LABEL com.github.actions.name="ESLint checks"
LABEL com.github.actions.description="Lint your code with eslint in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="yellow"

LABEL maintainer="Alberto Gimeno <gimenete@gmail.com>"

ENV PATH=$PATH:/app/node_modules/.bin

COPY . .

RUN npm install --production
RUN ls /app
RUN ls /app/src

CMD ["/app/src/index.js"]
