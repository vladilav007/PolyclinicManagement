class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.includes(:category).order(:name)
  end

  def show
    @doctor = Doctor.includes(:category).find(params[:id])
  end
end

