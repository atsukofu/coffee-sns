# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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