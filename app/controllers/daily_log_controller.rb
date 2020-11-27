class DailyLogController < ApplicationController
    def index
        render json: daily_logs, status: :ok
    end

    def show
        render json: daily_log, status: :ok
    end


    private

    def daily_log
        @_daily_log ||= DailyLog.find(params[:id])
    end

    def daily_logs
        @_daily_logs ||= DailyLog.all
    end

end
