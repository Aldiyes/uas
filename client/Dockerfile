FROM node:22-alpine

RUN addgroup -S appgroup && adduser -S app -G appgroup
USER app

RUN apk add --no-cache libc6-compat

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY --chown=app:app . /app

CMD ["npx", "next", "dev -H client -p $CLIEN_PORT"]