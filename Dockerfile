FROM diygod/rsshub

RUN \
 sed -i '109,112d;117,120d' /app/lib/routes/index.js
 
WORKDIR /app

EXPOSE 1200
ENTRYPOINT ["dumb-init", "--"]

CMD ["npm", "run", "start"]
