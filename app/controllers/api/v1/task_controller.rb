class Api::V1::TaskController < ApplicationController
    def index
        tasks = Task.all
        render json: Tasks
    end
end
