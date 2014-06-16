class User_Tasklist < ActiveRecord::Base
  belongs_to :user
  belongs_to :tasklist

  validates :user, presence: true
  validates :tasklist, presence: true
end
