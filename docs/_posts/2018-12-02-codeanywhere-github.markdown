---
layout: post
title: 'CodeAnywhereの開発環境とGitHubのリポジトリを連携する'
date: 2018-12-02 19:30:00 +0900
categories: codeanywhere
---

# 1. GitHub でリポジトリを作成する

GitHub にログインしてリポジトリを作成します。右上の + アイコンから [New Repository] を選択し、

![new repository]({{ site.url }}{{ site.baseurl }}/images/github-new-repo.png)

リポジトリの名前などを決めて [Create Repository] のボタンを押します。

![crate repository]({{ site.url }}{{ site.baseurl }}/images/github-create-repo.png)

以下が新しいリポジトリを作った状態です。

![crated repository]({{ site.url }}{{ site.baseurl }}/images/github-created-repo.png)

中断に GitHub との連携をセットアップするコマンドがありますので、これをコピーしておいてください。

```shell
#コマンドの例
echo "# my-repo" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:kamataryo/my-repo.git
git push -u origin master
```

# 2. Codeanywhere で Git を使うための設定を行う

以下のコマンドを実行してください。以下は、メールアドレスを GitHub のものに置き換えるコマンドです。`<username>`はあなたの GitHub ユーザー名に置き換えてください。

```shell
git config --global user.umail '<username>@users.noreply.github.com'
```

# 3. Codeanywhere でコマンドを実行する

Codeanyehere から SSH Terminal を開き、上記のコマンドをペースト（Windows の場合は [shift] + [insert] キー）して実行してください。GitHub にコミットが送られます。

# 4. Git のコミットを作成して GitHub にコミットをプッシュする

Codeanywhere 上で何らかの編集作業を行ってください。（例: TODOs.txt というファイルを作成して TODO リストを作成する）
そのあとで、以下のコマンドを実行してコミットを GitHub にプッシュし、変更が反映されていることを GitHub のダッシュボードから確認してください。`<コミットメッセージ>` はあなたが行った作業を説明する文章に置き換えてください。（例: `git commit -m"今日の分のTODOリストを追加"`）

```shell
$ git add .
$ git commit -m"<コミットメッセージ>"
$ git push origin master
```
