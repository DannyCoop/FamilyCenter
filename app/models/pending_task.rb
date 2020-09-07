class PendingTask < ApplicationRecord
    belongs_to :requester_task, :foreign_key => :requester_task_id, :class_name => "Task"
    belongs_to :requestee_task, :foreign_key => :requestee_task_id, :class_name => "Task"
    belongs_to :requester, :foreign_key => :requestee_id, :class_name => "User"
    belongs_to :requestee, :foreign_key => :requester_id, :class_name => "User"
end
