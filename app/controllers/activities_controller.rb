class ActivitiesController < ApplicationController
    def create
        @activty = Activity.new(params["activity"])
        @activity.user_id = @current_user.id
        @activity.save
        redirect_to "/places/#(@activity.user_id)"
    end
end
