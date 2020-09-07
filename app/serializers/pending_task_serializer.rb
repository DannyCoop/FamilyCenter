class PendingTaskSerializer < ActiveModel::Serializer
  attributes :id, :requester_id, :requestee_id, :requester_task_id, :requestee_task_id
end
