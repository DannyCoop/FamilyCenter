class Api::V1::FamiliesController < ApplicationController
    def index
        families = Family.all
        render json: families
    end

    def create
        family = Family.new(family_params)
        if family.save
            render json: family
        else
            render json: {error: "family not made"}
        end
    end





    private

    def family_params
        params.permit(:family_name)
    end
end