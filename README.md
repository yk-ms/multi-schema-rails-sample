# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

## DBセットアップ
```
# DB作成
# bundle exec rails ${db名}:create
$ bundle exec rails hoge:create

# テーブル作成
# bin/bundle exec ridgepole -c config/database/${db名}.yml -E development --apply -f db/schemas/${db名}/Schemafile
$ bin/bundle exec ridgepole -c config/database/hoge.yml -E development --apply -f db/schemas/hoge/Schemafile
```
