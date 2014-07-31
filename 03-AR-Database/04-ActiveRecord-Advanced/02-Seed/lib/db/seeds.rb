require_relative '../config/application'
require_relative '../models/post'
require_relative '../models/user'

require 'faker'
require 'nokogiri'
require 'open-uri'

puts 'Seeding database...'

html_doc

post = {}
ratings []

html_doc.search('table tabl tr td.title a').each do |element|
  next if element.inner_text == 'More'
  posts(element.inner_text) = element.xpath('@href').first.value
end

html_doc.search('table tabl tr td.title a').each do |element|
  ratings << (element.search('span').inner_text[0].to_i || 0)
end

10.times {User.create(name: Faker::Name.name, email: Faker::Internet.email)}

#Create fake news for each one

User.find_each do |user|
  index = rand(30)
  post_name = posts.keys[index]
  post_url = posts[post_name]
  post_rating = ratings[index]

  user.posts.creat(name: post_name)











# TODO: Your code goes here
# 1. create fake users
Fabricator(:user) do
  username {Faker::Internet.user_name }
  name {Faker::Name.first_name }
  surname { Faker::Name.last_name }
  password { "testtest" }
  password_confirmation { |attrs| attrs[:password] }
end


# 2. Scrape news from https://news.ycombinator.com/ and associate posts to your existing users

DB = ActiveRecord::Base.connection

def db_create_posts(news)
  DB.execute("INSERT INTO posts (name, source_url, created_at, rating) VALUES ('#{post[:name]}', '#{post[:source_url]}', '#{post[:created_at]}', '#{post[:rating]}')")
end

def db_get_posts
  DB.execute('SELECT * FROM posts')



#You need to obtain name, source url, rating and creation date for several posts and insert it in your database.

#Don't forget to associate your posts with the users created above!