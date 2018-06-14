
class ActivitiesController < ApplicationController
  before_action :authentication_required
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    # @activities = Activity.all.order("created_at DESC")
      @appointment = Appointment.find(params[:appointment_id])
    @activities = @appointment.activities
    @activity = Activity.new
  end


  def new
      @appointment = Appointment.find(params[:appointment_id])
    @activity = Activity.new

  end

  def create
    @appointment = Appointment.find(params[:appointment_id])
    @activity = @appointment.activities.build(activity_params)

    if @activity.save

      redirect_to appointment_activities_path(@appointment)
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
    redirect_to activities_path
  end

  def complete
    @activity = Activity.find(params[:id])
    @activity.update_attribute(:status, true)
    redirect_to activity_path
  end




private
  def activity_params
    params.require(:activity).permit(:title, :description, :directions, :schedule, :link)
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end
end
