class Api::V1::CalendarEventsController < ApplicationController
    def index
        cal_events = CalendarEvent.all
        render json: cal_events
    end

    def create
        cal_event = CalendarEvent.new(cal_event_params)
        if cal_event.save
            render
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
        params.permit(:title, :start_time, :end_time, :user_id)
    end
end
