---
layout: post
title: 'CodeAnywhereで開発環境を作って、作業して、壊す'
date: 2018-12-02 19:00:00 +0900
categories: codeanywhere
---

# 1. Codeanywhere で開発環境（container）を作成する

Codeanywhere にログインし、[エディタ](https://codeanywhere.com/editor/)に移動します。
[File] -> [New Connection] -> [Container] を選択します。

![new connection]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-new-connection.png)

`Name` の項目にはわかりやすい名前をつけ、 `stack` は `html` などで検索して見つけることができる `Ubuntu 16.04` というものを選択してください。スタックとは、様々な開発用途に適した開発環境の構成をさしており、例えば html のスタックから作成した Container には web 開発に便利な機能が搭載されています。

![select stack]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-select-stack.png)

[create] のボタンを押すと Container の作成が始まります。しばらく待つと、開発環境を使い始めることができます。

# 2. Container 上でファイルやフォルダを作成する

コンテナの名前の上で右クリックすると、様々なメニューが現れます。[Create File] や [Create Folder] を選択すると、ファイルやフォルダを作成することができます。

![container menu]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-container-menu.png)

ファイルは右のテキスト編集エリアで内容を編集することができます。

![edit]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-edit-file.png)

# 3. SSH Terminal でコマンドを入力する

コンテナメニューから [SSH Terminal] を選択すると、ターミナルを使うことができます。ターミナルでは、コマンドを入力することでファイルや Git の操作などをすることができます。

![terminal]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-terminal.png)

#4. コンテナを削除する

コンテナのメニューから Destroy を選択すると、コンテナを削除することができます。Codeanywhere の無料プランでは同時に 1 つのコンテナしか使うことができないため、別の作業をするときや、現在の状態が分からなくなった時はコンテナを削除してください。現在幾つのコンテナが起動しているかは、 右上のアバターをクリックして表示されるダッシュボードメニューから確認することができます。

![dashboard]({{ site.url }}{{ site.baseurl }}/images/codeanywhere-dashboard.png)
