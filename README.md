Various Examples for AZK
========================

Start agent
```bash
azk agent start
```

Create Azkfile.js
```bash
azk init -f;
```

To start all systems:
```
azk start
```

Start and Reprovision one system:
```
azk start ruby21 -R;
azk start ruby20 -R
azk start ruby19 -R
azk start postgres -R
azk start rails41Postgres -R
azk start mysql -R
azk start rails41Mysql -R
azk start jruby17 -R
azk start python34 -R
azk start python27 -R
azk start flask -R
azk start django17 -R
azk start django15 -R
azk start phpLaravel -R
azk start phpSample -R
azk start node010 -R
```

Start and Stop all systems:
```
azk stop
azk start
```
