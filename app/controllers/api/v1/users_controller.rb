class Api::V1::UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    


    private

    # def user_params

    # end

    # def find_user
    #     @note = Note.find(params[:id])
    # end
end
