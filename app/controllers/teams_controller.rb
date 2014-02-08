class TeamsController < ApplicationController

  def index
    @teams=Team.all
  end

  def new
    @team=Team.new
  end

  def show
    @team = Team.find(params[:id])
  end

  def create
    session[:outfielders]=params[:outfielders]

    @team = Team.new(team_params)
    @outfielders = params[:team][:outfielder1]

    if @team.save
      redirect_to teams_path
    else
      render 'new'
    end
  end

  private

  def team_params
    params[:team].permit(:name,:starter1,:starter2,:reliever1,:reliever2,:catcher,:first,:second,:third,:short,:outfielder1,:outfielder2,:outfielder3)
  end


end
