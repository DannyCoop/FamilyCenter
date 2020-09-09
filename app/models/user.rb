class User < ApplicationRecord
    has_secure_password
    belongs_to :family
    has_many :tasks
    has_many :User_events
    has_many :events, through: :User_events
    has_many :requester_tasks, :foreign_key => :requester_id, :class_name => 'PendingTask'
    has_many :requestee_tasks, :foreign_key => :requestee_id, :class_name => 'PendingTask'

    validates :name, presence: true, uniqueness: true

    validates :category, presence: true

    def all_requestee_task
        requestee_tasks.map do |taskRequest| 
            {
                pending_task_id: taskRequest.id,
                requestee_task: taskRequest.requestee_task,
                requestee_id: taskRequest.requestee_id,
                requester_task: taskRequest.requester_task,
                requester_id: taskRequest.requester_id
            }

        end
    end

    def all_requester_task
        requester_tasks.map do |taskRequest| 
            {
                pending_task_id: taskRequest.id, 
                requestee_task: taskRequest.requestee_task,
                requestee_id: taskRequest.requestee_id,
                requester_task: taskRequest.requester_task,
                requester_id: taskRequest.requester_id
            }

        end
    end
end
