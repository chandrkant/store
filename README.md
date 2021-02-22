# Store

## Installation
```bash
rvm install ruby 2.7.0
rvm use 2.7.0
```
```bash

cd store
gem install bundler
bundle install
rails db:migrate
rails db:seed
rails s

```
## Usage

Only Admin can Create,Edit,DELETE
List of products
```bash
GET /products
```
