class Task < ApplicationRecord
    belongs_to :user

    validates :name, presence: true
    validates :description, presence: true
    validates :points, presence: :true
    validates :user_id, presence: true
    has_many :requester_task, :foreign_key => :requester_task_id, :class_name => "PendingTask"
    has_many :requestee_task, :foreign_key => :requestee_task_id, :class_name => "PendingTask"
end
