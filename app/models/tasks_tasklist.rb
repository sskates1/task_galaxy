class Task_Tasklist < ActiveRecord::Base
  belongs_to :task
  belongs_to :tasklist

  validates :task, presence: true
  validates :tasklist, presence: true
end
