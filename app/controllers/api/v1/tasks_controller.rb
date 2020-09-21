class Api::V1::TasksController < ApplicationController
    def index
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find(params[:id])

        render json: task
    end

    def create
        task = Task.new(task_params)
        # byebug
        if task.valid?
            task.save
            render json: task
        else
            render json: {error: "Can't make a this task"}
        end
    end

    def update
        task = Task.find(params[:id])
        task.update(task_params)
        
        render json: task
    end

    private

    def task_params
        params.permit(:name, :description, :points, :user_id)
    end
end
