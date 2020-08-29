class Api::V1::EventController < ApplicationController
    def index
        event = Event.all
        render json: event 
    end
end
