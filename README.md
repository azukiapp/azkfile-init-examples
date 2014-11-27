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
azk start ruby21 -R; azk stop ruby21; azk start ruby20 -R; azk stop ruby20; azk start ruby19 -R; azk stop ruby19; azk start postgres -R; azk stop postgres; azk start rails41Postgres -R; azk stop rails41Postgres; azk start mysql -R; azk stop mysql; azk start rails41Mysql -R; azk stop rails41Mysql; azk start jruby17 -R; azk stop jruby17; azk start python34 -R; azk stop python34; azk start python27 -R; azk stop python27; azk start flask -R; azk stop flask; azk start django17 -R; azk stop django17; azk start django15 -R; azk stop django15; azk start phpLaravel -R; azk stop phpLaravel; azk start phpSample -R; azk stop phpSample; azk start node010 -R; azk stop node010;
```
