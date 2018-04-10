require 'pry'

class ActivitiesController < ApplicationController
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all.order("created_at DESC")
    @activity = Activity.new
  end


  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    # binding.pry
    if @activity.save

      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @activity.update(activity_params)
      redirect_to activity_path(@activity)
    else
      render 'edit'
    end
  end

  def destroy
    @activity.destroy
    redirect_to root_path
  end

  def complete
    @activity = Activity.find(params[:id])
    @activity.update_attribute(:status, true)
    redirect_to root_path
  end




private
  def activity_params
    params.require(:activity).permit(:title, :description)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
