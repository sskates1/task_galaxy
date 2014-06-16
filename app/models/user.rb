class User < ActiveRecord::Base
  has_many :tasks
  has_many :tasklists, through: :users_tasklists

  validates :email, presence: true

end

