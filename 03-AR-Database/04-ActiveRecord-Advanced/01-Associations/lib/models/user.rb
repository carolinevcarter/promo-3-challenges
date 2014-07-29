class User < ActiveRecord::Base
  def up
    create_table :users do |t|
      t.string :name
      t.string :email
    end
  end
end



 # TODO: add associations to the Post model