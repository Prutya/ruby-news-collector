# News parser

* Install postgresql
```bash
$ brew install postgresql
```
* Install redis
```bash
$ brew install redis
```
* Run redis
```bash
$ brew services start redis
```
* Run sidekiq
```bash
$ sidekiq
```
* Run server
```bash
$ rails server
```
* Run rake task
```bash
$ rake parser:parse[100]
```
* Visit localhost:3000
