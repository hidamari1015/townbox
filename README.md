# アプリ名：TownBox

# 概要
- 街に対する思いを、画像付きで投稿することができます。

# 本番環境
 AWSで公開しています。
  URL： http://54.150.115.215
  - Email: test@gmail.com
  - パスワード: 1qazxsw2

# 制作背景
- このアプリを作成したきっかけは、地元の知事選挙でした。
  若い方が投票にきていないと感じました。自分たちが住んでいる街の事で、
  とても大切な事なのにどうして少ないのか。
  もしかしたら自分たちが思っている、感じている事を、意見することができていないのではと
  感じました。役場の方と対面で意見するのではなく、感じた事を投稿して、共感しあえるアプリがあれば、
  自分たちで街全体をより良くしていけるのではと考え作成しました。
  また、投稿を見てこれから街の役員のとして立候補する方の、マニフェストの役に立てることも担うことも想定しています。

# DEMO  
### 一覧表示
  ![一覧表示](app/assets/images/一覧表示.png)  
  新規登録していない方でも、投稿内容は確認できます。  
  右上のログインボタン、新規登録ボタンから各ページへ遷移します。
  ニックネームの部分を押下していただくと、ユーザーのページに遷移します。
### 新規登録（ユーザー登録）
  ![新規登録](app/assets/images/ユーザー登録.png)  
  項目を全て入力していただくと、登録ができます。
### ログイン
  ![ログイン](app/assets/images/ログイン.png)  
  登録していただいた、メールアドレスとパスワードを入力していただくと  
  一覧表示に遷移します。
### 新規投稿
  ![新規投稿](app/assets/images/新規投稿.png)  
  項目を全て入力していただくと投稿できます。
### 詳細画面
  ![詳細画面](app/assets/images/詳細画面.png)  
  一覧表示に投稿されている画像を押下していただくと詳細ページに遷移します。
### コメント
  ![コメント](app/assets/images/コメント.png)  
  ログインしている方のみになりますが、詳細ページからコメントをすることができます。
  
  
# 工夫したポイント
  - 検索機能を使うことで、自分と同じ考えの投稿を表示することができます。

# 使用技術
  - Ruby, Ruby on Rails, html, CSS, GitHub, AWS

# 課題（今後実装したい機能）
  - 都道府県ごとのページを作成する。
  - 年代別で意見の集計表を表示できるようにする。

# DB設計
## usersテーブル

| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| email       | string | null: false |
| password    | string | null: false |
| nickname    | string | null: false |
| prefecture  | string | null: false |
| city        | string | null: false |

- has_many :tweets
- has_many :comments

## tweetsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| title       | string     | null: false |
| catch_copy  | text       | null: false |
| concept     | text       | null: false |
| user        | references |             |

- belongs_to :users
- has_many :comments, dependent: :destroy

## commentsテーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| text        | text       | null: false |
| user        | references |             |
| tweet       | references |             |

- belongs_to :users
- belongs_to :tweets
