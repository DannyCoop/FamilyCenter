class Api::V1::UsersController < ApplicationController
    def index
        users = User.all

        render json: users.to_json( :include => [:tasks, :family, :events])
    end

    def create
        user = User.new(user_params)
        # byebug
        if user.valid?
            user.save
            render json: {user: user, token: encode_token({user_id: user.id})}
            # byebug
        else
            render json: {error: "you can't even signup smh"}
        end
    end

    def login
        user = User.find_by(name: params[:name])
        if user && user.authenticate(params[:password])
            render json: {user: user, family: user.family, token: encode_token({user_id: user.id})}
        else
            render json: {error: "you messed up lol XD"}
        end
    end
    
    def show
        user = User.find(params[:id])
        render json: user.to_json( :include => [:tasks, :family, :events])
    end

    def update
        user = User.find(params[:id])
        user.update(points: params[:points])
        # byebug
        task = Task.find_by(id: params[:task])
        if task
            task.destroy
        end
        render json: user.to_json( :include => [:tasks, :family, :events])
    end

    private

    def user_params
        params.permit(:name, :category, :points , :password, :family_id)
    end

    # def find_user
    #     @note = Note.find(params[:id])
    # end
end
