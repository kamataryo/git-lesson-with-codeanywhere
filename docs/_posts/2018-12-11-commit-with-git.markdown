---
layout: post
title: 'Git でコミットを作成する'
date: 2018-12-11 14:00:00 +0900
categories: git
author: kamataryo
---

Git を使ってコミットを作成し、GitHub にプッシュする手順を説明します。
Codeanywhere のコンテナがセットアップされていること、GitHub にリポジトリが作成されて remote が登録されていることを確認してください。GitHub に作成したリポジトリが Codeanywhere 上で remote が登録されているかどうかは、SSH Terminal を開いて`workspace`というディレクトリで以下のコマンドを打つことで確認できます。

登録されていないとき:

```shell
$ git remote -v
fatal: not a git repository (or any of the parent directories): .git
```

登録されているとき:

```shell
$ git remote -v
origin	git@github.com:username/reponame.git (fetch)
origin	git@github.com:username/reponame.git (push)
```

# 1. プロジェクトを編集する

Codeanywhere のエディタ機能を使って、ファイルやフォルダを作成しプロジェクトを進めください。

# 2. コミットを作成する

プロジェクトがコミット可能な状態（編集の区切りがついた状態）になったら、 Git のコマンドを SSH Terminal を開いて入力しコミットを作成します。

## 編集内容をステージする

コミットに先立って、編集したファイルをステージします。ステージしたもののみがコミットされます。全てのファイルをステージするには、 `.` (ドット、カレントディレクトリの全てのファイルを選択する意味)を使って以下のコマンドを入力してください。

```shell
$ git add .
```

特定のファイルのみをステージする場合は以下のように指定します。

```shell
$ git add file.txt
```

## 編集内容をコミットする

コミットに含めたい全てのファイルがステージされていることを確認します。

```shell
$ git status
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   file.txt
```

上記の例は、`file.txt` という名前のファイルを作成してそれをステージに乗せた状態です。このファイルをコミットして良い場合は、以下のコマンドでコミットを作成してください。

```shell
$ git commit -m"<コミットメッセージ>"
```

`<コミットメッセージ>` の部分には、この変更がどのような変更なのか、なんのための変更なのかを簡潔に説明する文章を入力してください。

なお、 `-m` オプションを省略すると vim エディタでコミットメッセージを入力することができます。

```shell
$ git commit
```

## 作成したコミットを GitHub にプッシュする

作成したコミットは以下のコマンドで GitHub にプッシュすることができます。

```shell
$ git push origin master
```

`origin` は 作成した GitHub のリポジトリを指す名前です。 `git remote -v` コマンドの表示でも、 origin として表示されていますね。`master` は現在あなたが作業しているブランチです。したがって、このコマンドは、 `origin` に `master` ブランチをプッシュするという意味になります。
