class Api::V1::PendingTasksController < ApplicationController
    def create
        pt = PendingTask.new(pending_task_params)
        # byebug
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

    def update
        pt = PendingTask.find(params[:id])
        pt.update(pending_task_params)

        render json: pt
    end

    def requester_task
        requester = PendingTask.find_by(requester_id: params[:id])
        render json: requester.to_json( :include => [:requester_task, :requestee_task, :requestee])
    end

    def requestee_task
        requestee = PendingTask.find_by(requestee_id: params[:id])
        render json: requestee.to_json( :include => [:requestee_task, :requester_task, :requester])
    end


    private

    def pending_task_params
        params.permit(:requestee_task_id,:requestee_id, :requester_task_id, :requester_id)
    end
end
