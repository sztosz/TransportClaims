class Admin::StatusesController < ApplicationController
  before_action :authenticate_user!

  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
    authorize @status
  end

  def create
    @status = Status.new status_params
    authorize @status
    if @status.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  def edit
    @status = Status.find params[:id]
    authorize @status
  end

  def update
    @status = Status.find params[:id]
    authorize @status
    if @status.update status_params
      redirect_to action: 'index'
    else
      render :edit
    end
  end

  def destroy
    @status = Status.find params[:id]
    authorize @status
    @status.destroy
    redirect_to admin_statuses_path
  end

  def status_params
    params.require(:status).permit(:name)
  end
end
