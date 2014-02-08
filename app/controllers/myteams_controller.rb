class MyteamsController < ApplicationController

  def index
    @myteams=Myteam.all
  end

  def new
    @myteam=Myteam.new
  end

  def show
    @myteam = Myteam.find(params[:id])
  end

  def create
    @myteam = Myteam.new(myteam_params)
    if @myteam.save
      redirect_to myteams_path
    else
      render 'new'
    end
  end

  private

  def myteam_params
    params[:myteam].permit(:name,:pitcher,:myplayer)
  end



end