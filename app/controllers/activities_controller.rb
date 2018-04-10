class ActivitiesController < ApplicationController
  before_action :set_activity, only: :show

  def index
    @activities = Activity.all.order("created_at DESC")
  end


  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end




private
  def activity_params
    params.require(:activity).permit(:title, :description)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
