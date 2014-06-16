class Task < ActiveRecord::Base
  belongs_to :user
  has_many :tasklists, through: :tasks_tasklists

  validates :name, presence: true

end
