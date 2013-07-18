require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation, :secrets_attributes
  has_secure_password
  
  
  before_save :create_session_token
  
  has_many(
    :authored_secrets,
    :class_name => "Secret",
    :foreign_key => "author_id"
  )
    
  has_many(
    :recieved_secrets,
    :class_name => "Secret",
    :foreign_key => "recipient_id"
  )
  
  has_many :friendships
  has_many :friends, :through => :friendships

  validates :username, :password_confirmation, :presence => true
  
  
  def sorted_friends_ids     # Doesn't work, still ambiguous column name error

    query = <<-SQL
      SELECT users.id
        FROM users
        JOIN friendships
          ON users.id = friendships.friend_id
       WHERE friendships.user_id = ?
    ORDER BY id
    SQL
    # Doesn't work, still ambiguous column name error
    User.find_by_sql([query, self.id])
  end
  
  private
  
  def create_session_token
    self.session_token = SecureRandom::base64
  end
end