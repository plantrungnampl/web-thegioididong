Table Role {
  id int [pk, increment]
  name varchar(20)
}

Table User {
  id int [pk, increment]
  fullname varchar(50)
  email varchar(150)
  phone_number varchar(20)
  address varchar(200)
  password varchar(32)
  role_id int
  created_at datetime
  updated_at datetime
  deleted int
}

Table Tokens {
  user_id int [pk]
  token varchar(32) [pk]
  created_at datetime
}

Table Category {
  id int [pk, increment]
  name varchar(100)
}

Table Product {
  id int [pk, increment]
  category_id int
  title varchar(250)
  price int
  discount int
  thumbnail varchar(500)
  description longtext
  created_at datetime
  updated_at datetime
  deleted int
}

Table Galery {
  id int [pk, increment]
  product_id int
  thumbnail varchar(500)
}

Table FeedBack {
  id int [pk, increment]
  firstname varchar(30)
  lastname varchar(30)
  email varchar(250)
  phone_number varchar(20)
  subject_name varchar(350)
  note varchar(1000)
  status int [default: 0]
  created_at datetime
  updated_at datetime
}

Table Orders {
  id int [pk, increment]
  user_id int
  fullname varchar(50)
  email varchar(150)
  phone_number varchar(20)
  address varchar(200)
  note varchar(1000)
  order_date datetime
  status int
  total_money int
}

Table Order_Details {
  id int [pk, increment]
  order_id int
  product_id int
  price int
  num int
  total_money int
}

Ref: "Role"."id" < "User"."role_id"

Ref: "Category"."id" < "Product"."category_id"

Ref: "Product"."id" < "Order_Details"."product_id"

Ref: "Product"."id" < "Galery"."product_id"

Ref: "Orders"."id" < "Order_Details"."order_id"

Ref: "User"."id" < "Orders"."user_id"

Ref: "User"."id" < "Tokens"."user_id"