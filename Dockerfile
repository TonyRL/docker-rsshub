FROM diygod/rsshub

RUN \
 sed -i '98,101d;106,109d' /app/lib/routes/index.js
 
WORKDIR /app

EXPOSE 1200
ENTRYPOINT ["dumb-init", "--"]

CMD ["npm", "run", "start"]
