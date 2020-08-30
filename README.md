# README

## Coffee　SNS
<img width="1268" alt="スクリーンショット 2020-08-30 21 42 55" src="https://user-images.githubusercontent.com/62829792/91659370-0ee04300-eb0a-11ea-85c9-5ff5a8bc2eaf.png">
This application enable you to post a  and share them.<br>
You can also comment messages and press the like button to your favorite posts.<br>
このアプリはコーヒーの評価を投稿し、共有するアプリです。<br>
素敵な投稿には「いいね！」やコメントを残すこともできます。<br>

## Description
<img width="920" alt="スクリーンショット 2020-08-30 21 43 34" src="https://user-images.githubusercontent.com/62829792/91659372-130c6080-eb0a-11ea-90b6-2c896bffa187.png">
You can evaluate coffee taste of "sweetness", "bitterness", "acidity", "fragrance", "richness" in 5 levels.<br>
you can also show them in a radar chart and the balance of the taste is a quite obvious.<br>
The overall evaluation is showed in the number of stars.<br>
Save your favorite coffees and let everyone know them.<br>
You also enjoy new encounter with unknown coffees!<br>
コーヒーの評価は「甘味」「苦味」「酸味」「香り」「コク」と全体評価を各5段階で評価できます。<br>
「甘味」「苦味」「酸味」「コク」「」はレーダーチャートで示されるので、味のバランスが一目瞭然!<br>
また、全体評価は★の数で表されます。<br>
おいしかったコーヒーの情報を保存しておき、みんなに知ってもらいましょう。<br>
また、世界中の人が教えてくれる、新たなコーヒーとの出会いをぜひ楽しんでください！<br>

## Usage
$ git clone https://github.com/atsukofu/coffee-sns.git<br>
$ cd hoge<br>
$ bundle install<br>
$ rails db:create<br>
$ rails db:migrate<br>
$ rails s<br>
👉 http://localhost:3000
上記コマンドでダウンロードし、ローカルサーバーで起動してください。

If you access on internet Web site, please access later URL.<br>
You can use this tool when you create an account.(Please sign up.)<br>
Web上でアクセスされる場合は下記URLにアクセスしてください。<br>
アカウントを作成していただくと、アプリを使うことができます。<br>
👉 https://coffee-sns.herokuapp.com/

## Test account
Please use later test account to use this application for test.
試しにアプリを使用してみる際には、下記のテストアカウントを使用してください！
- mail address: aaa@gmail.com
- password: aaaaaa

## Commitment
<img width="1268" alt="スクリーンショット 2020-08-30 21 42 55" src="https://user-images.githubusercontent.com/62829792/91659370-0ee04300-eb0a-11ea-85c9-5ff5a8bc2eaf.png">
<img width="641" alt="スクリーンショット 2020-08-30 21 44 00" src="https://user-images.githubusercontent.com/62829792/91659389-24ee0380-eb0a-11ea-803d-51f02f437995.png">
このアプリにはレスポンシブデザインを採用しております。<br>
SNSはスマホから見られることが非常に多く、<br>
このアプリの役割である、「記録」「共有」については、外出先からでもどこからでも見やすいことが大切だと考えたからです。<br>
PC、タブレット、スマホからぜひ使ってみてください！<br>

## Technology Used
- Ruby On Rails
- Ruby
- HTML
- Sass
- jQuery UI
- MySQL
レーダーチャート については、jQueryライブラリののchart.jsを使用して実装いたしました。

## Future Plans


<!-- db設計 -->
<!-- usersテーブル -->
|Column|Type|Opstions|
|------|----|--------|
|nickname|string|null:false|
|email|string|null:false|
|password|string|null:false|
|image|string||
|message|text||

<!-- postsテーブル -->
|Column|Type|Opstions|
|------|----|--------|
|user_id|integer|null: false, foreign_key: true|
|product|string|null:false|
|shop|string||
|brand|string||
|price|integer|null: false|
|per|integer|null: false, default: 1|
|stars|integer|null: false, default: 3|
|acidity|integer|null: false, default: 3|
|bitterness|integer|null: false, default: 3|
|sweetness|integer|null: false, default: 3|
|fragrance|integer|null: false, default: 3|
|richiness|integer|null: false, default: 3|


<!-- likesテーブル -->
|Column|Type|Opstions|
|------|----|--------|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


<!-- commentsテーブル -->
|Column|Type|Opstions|
|------|----|--------|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
|content|text|null: false|
