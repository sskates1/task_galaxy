class TaskList < ActiveRecord::Base
  has_many :users, through: :users_tasklists
  has_many :tasks, dependent: :destroy, through: :tasks_tasklists

  validates :name, presence: true

end
