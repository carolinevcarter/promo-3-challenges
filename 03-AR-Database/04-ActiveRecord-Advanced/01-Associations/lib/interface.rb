require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

def ask(prompt)
  print "#{prompt} "
  gets.to_s.chomp
end

def create_post(user)
  name = ask('Name:')
  source_url = ask('Source URL:')
  rating = ask('Rating:')
  post_params = { name: name, source_url: source_url, date: Time.now, rating: rating }

  post = Post.create(post_params)
  user.posts << post
end
 # TODO: use ActiveRecord to add a new post for the user logged in!



def list_posts(user)
  p user.posts
end

# TODO: use ActiveRecord to get all posts of the current user



def delete_posts(user)
  user.posts.destroy_all
  # TODO: use ActiveRecord to delete all posts of current user
end



while true
  logged_in = false

  until logged_in
    puts 'Please login with your <id>'

    id = gets.chomp
    user = User.find(id)

  end
  # TODO: instantiate a user with his <id> ^^




  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Exit"

  case ask('>')
  when 1 then create_post(user)
  when 2 then list_posts(user)
  when 3 then delete_posts(user)
  when 4 then break
  end
end
