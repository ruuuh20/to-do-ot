class TherapistsController < ApplicationController
  def new
    @therapist = Therapist.new

  end

  def create
    @therapist = Therapist.create(therapist_params)
    if @therapist.save
      session[:user_id] = @therapist.id
      redirect_to activities_path
    else
      # binding.pry
      render :new
    end

  end

  private
  def therapist_params
    params.require(:therapist).permit(:code, user_attributes: [:id, :name, :password])
  end
end
