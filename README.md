# README

# アプリケーション名
- Root-Letter
# アプリケーション概要
- ユーザー登録

  ユーザーの登録ができ、ニックネームや好きな漫画のジャンルを登録することができます
- 投稿機能 

  自分の好きな漫画家とその方へのお手紙と称した投稿をすることができます
- 検索機能 

  他のユーザーや自分が投稿した投稿の漫画家の名前で検索することができます
- コメント機能   

投稿物にコメントする事ができます

# URL
- https://root--retter.herokuapp.com/

# テスト用アカウント
- ユーザー名:test
- Eメール:111@test.com
- パスワード:aaaaa1

# 制作背景(意図)
 私自身漫画が好きなのですが、好きな漫画家の方が最終巻のあとがきにファンレターが３通も来ました！とおっしゃっていた事に驚いた過去があるためです。
 その時非常に後悔したのを覚えており、いつかファンレターを書きたいと思いつつ１０年が過ぎてしまっている状態です。
 このような形なら漫画家へのファンレターを書けるのではないか？と思い作成しました。

# DEMO
- トップページ
[![Image from Gyazo](https://i.gyazo.com/a87e5d763ea25a17ed6ba1dffdda436a.jpg)](https://gyazo.com/a87e5d763ea25a17ed6ba1dffdda436a)
アプリの説明文と検索欄を表記。投稿物は新しい順番になるようにしました。

- 新規登録
[![Image from Gyazo](https://i.gyazo.com/7d6d00acb07b3e1467bf798e3667c3cd.png)](https://gyazo.com/7d6d00acb07b3e1467bf798e3667c3cd)
最小限の登録情報を記入してもらうようにしました。ジャンルはアクティブハッシュを使用し、項目から選んでもらうようにしました。

- マイページ
[![Image from Gyazo](https://i.gyazo.com/ddee812b2b8d75eae3046873fb08b0b1.jpg)](https://gyazo.com/ddee812b2b8d75eae3046873fb08b0b1)
登録情報をもとに名前・プロフィール・好きなジャンルを表記、また自分の投稿を新しい順に表記するようにしました。
プロフィールがない場合は欄ごとでないように、投稿物がない場合「投稿して見よう」と文字が出るようにしました。

- 投稿詳細
[![Image from Gyazo](https://i.gyazo.com/03cffb1d9a8e4292240e3084153b4da8.jpg)](https://gyazo.com/03cffb1d9a8e4292240e3084153b4da8)
詳細物とコメント欄を配置しました。
ログインしていないと、コメントできないようにし、注意文を表示されるようにしました。

- レスポンシブデザイン
[![Image from Gyazo](https://i.gyazo.com/157f98f2ae8d0f293f098d756ba38091.gif)](https://gyazo.com/157f98f2ae8d0f293f098d756ba38091)
画面の幅が変わると投稿物や検索欄のサイズを幅に合わせるようにしました。

# 工夫したポイント
- 全体的な雰囲気を合わせました。黒と白を基調とした雰囲気、検索欄や投稿物の四角いボタンや、見出しのグラデーションを統一することでアプリ全体に統一感をもたせました。
- 全ページレスポンシブデザインにし、画面の幅に合わせることができました。

# 使用技術
- バックエンド
ruby/ruby on rails
- フロント
html/css
- データベース
MySQL
- 本番環境
Heroku
# ソース管理
- GitHub/GitHubDesktop

# テーブル設計

## usersテーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| nick_name          | string  | null: false               |
| genre_id           | integer | null: false               |
| profile            | text    |                           |

### Association
- has_many :artists
- has_many :comments

## artistsテーブル
| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| name        | string     | null: false       |
| explanation | text       | null: false       |
| user        | references | foreign_key: true |

### Association
- has_many :comments
- belongs_to :user

## commentsテーブル
| Column   | Type    | Options        |
| ---------| ------- | -------------- |
| text     | text    | null: false    |
| user_id  | integer | null: false    |
| user_id  | integer | null: false    |

### Association
- belongs_to :user
- belongs_to :artist
