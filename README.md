swapp
=====

Projet application levy


Pour ne pas afficher les ID et SECRET de facebook, créer des variables d'environnement, à définir en local dans un fichier config/local_env.yml
FACEBOOK_APP_ID: ''
FACEBOOK_APP_SECRET: ''
AWS_ACCESS_KEY_ID: ''
AWS_SECRET_ACCESS_KEY: ''

Egalement à définir (pas par chaque développeur) avec le Terminal en tapant  --->  
heroku config:set FACEBOOK_APP_ID=idàvoirsurdevelopper.facebook FACEBOOK_APP_SECRET=secretàvoirsurdevelopper.facebook

heroku config:set AWS_ACCESS_KEY_ID=xxx AWS_SECRET_ACCESS_KEY=yyy


Upload de fichiers
Tuto : https://devcenter.heroku.com/articles/paperclip-s3

Install PG config sur Mac
Commande (attention, selon la version de postgres ce n'est pas forcément 9.3)
gem install pg -- --with-pg-config=/Applications/Postgres.app/Contents/Versions/9.3/bin/pg_config