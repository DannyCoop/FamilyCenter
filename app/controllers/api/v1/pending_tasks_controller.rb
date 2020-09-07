class PendingTasksController < ApplicationController
    def create
        pt = PendingTask.new(:requestee_task_id,:requestee_id, :requester_task_id, :requester_id)
        if pt.save
            render json: pt
        else
            render json: {error: "to scared to ask to trade task smh"}
        end
    end

    def destroy
        pt = PendingTask.find(params[:id])
        pt.destroy
        render json: { message: "Trade complete take care of 'pokemon name goes here'" }
    end

    def requester_task
        requester_task = PendingTask.find_by(:requester_task_id)
    end

    def requestee_task
        requestee_task = PendingTask.find_by(:requestee_task_id)
    end
end
