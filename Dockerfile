FROM diygod/rsshub

RUN \
 sed -i '107,110d;115,118d' /app/lib/routes/index.js
 
WORKDIR /app

EXPOSE 1200
ENTRYPOINT ["dumb-init", "--"]

CMD ["npm", "run", "start"]
