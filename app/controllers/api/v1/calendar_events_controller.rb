class Api::V1::CalendarEventsController < ApplicationController
    def index
        cal_events = CalendarEvent.all
        render json: cal_events
    end

    def create
        cal_event = CalendarEvent.new(cal_event_params)
        # byebug
        if cal_event.save
            render json: cal_event
        else
            render json: "task was not made"
        end
    end

    def destroy
        cal_event = CalendarEvent.find(params[:id])
        cal_event.destroy
    end


    private

    def cal_event_params
        params.permit(:title, :date, :end, :user_id, :family_id)
    end
end
