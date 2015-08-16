class ActivitiesController < ApplicationController
  def index
  end

  def edit
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)
    if @activity.save
      redirect_to activities_path
    else
      redirect_to back
    end
  end

  def update
  end

  private

  def activity_params
    params.require(:activity).permit(:description, :duration, :intensity, :date)
  end
end
