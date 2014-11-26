Various Examples for AZK
========================

Just type:
```
azk agent start
azk init
azk start
```

Docker util
```bash
docker run -v /home/julio/_git/azkfile-init-examples/phpLaravelSnippets:/app -p 127.0.0.1:8000:8000 -t -i --rm 53aec79ce4ba bash

composer create-project laravel/laravel laravelExample --prefer-dist

cd laravelExample

php artisan serve --host 0.0.0.0
```