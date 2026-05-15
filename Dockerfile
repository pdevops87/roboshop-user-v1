FROM          node:20
RUN           useradd -m roboshop
RUN           mkdir -p /app
RUN           chown -R roboshop:roboshop /app
USER          roboshop
WORKDIR       /app
COPY          . /app/
RUN           npm install
ENTRYPOINT    ["node", "/app/server.js"]