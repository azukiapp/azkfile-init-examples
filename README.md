Various Examples for AZK
========================

Create Azkfile.js
```bash
azk init -f;
```

To start all systems:
```
azk start
```

Restart all systems:
```
azk restart
```

Stop and Start all systems:
```
azk stop
azk start
```

To start and reprovision all systems:
```
azk start --reprovision
```

Start and reprovision one system:
```
azk start ruby21 --reprovision
azk start ruby20 --reprovision
azk start ruby19 --reprovision
azk start postgres --reprovision
azk start railsPostgres --reprovision
azk start mysql --reprovision
azk start railsMysql --reprovision
azk start jruby17 --reprovision
azk start python34 --reprovision
azk start python27 --reprovision
azk start flask --reprovision
azk start django17 --reprovision
azk start django15 --reprovision
azk start phpLaravel --reprovision
azk start phpSample --reprovision
azk start node010 --reprovision
```
