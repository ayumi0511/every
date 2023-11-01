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

# テーブル設計

Users テーブル:

| Column	                | Type	    | Options       |
|-------------------------|-----------|---------------|
| nick_name               |	 string   |               |	
| email                   |	 string	  |               |
| password	              |  string	  |               |
| password_confirmation	  |  string	  |               |
| first_name	            |  string	  |  null: false  |
| last_name	              |  string	  |  null: false  |
| first_name_kana	        |  string	  |               |
| last_name_kana	        |  string	  |               |
| birthday                | 	date    |             	|
| age	                    |  integer  |               |
| post_code	              |  string	  |               |
| prefectures	            |  string	  |               |
| city	                  |  string	  |               |
| street_address          |  string	  |               |

Association:
has_one :subscription
has_many :orders

Subscription テーブル:

| Column                  |	Type      |	Options       |
| standard                | boolean	  |               |
| advanced                | boolean	  |               |
| premium                 |	boolean	  |               |

Association:
belongs_to :user

Order テーブル:

| Column                  | Type      |	Options       |
| store                   |	string    |               |
| menu                    | string    |               |

Association:
belongs_to :user

Login テーブル:

| Column                  | Type      |	Options       |
| email                   | string    |               |
| password                | string    |               |
| password_confirmation   |	string    |               |

Post テーブル:

| Column                  | Type      | Options       |
| image_url               | string    |               |
| text                    | text      |               |

Add_store テーブル:

| Column                  | Type      | Options       |
| store_name              | string    |               |
| location                | string    |               |
| menu                    | string    |               | 

Data テーブル:

| Column                  | Type      | Options       |
| age	                    | integer   |               |
| gender                  | string    |               |
| post_code               | string    |               |
| prefectures             | string    |               |
| city                    | string    |               |
| street_address          | string    |               |