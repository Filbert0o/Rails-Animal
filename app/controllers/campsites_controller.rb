class CampsitesController < ApplicationController

  def index
    @campsites = Campsite.all
  end

  def show
    @campsite = Campsite.find(params[:id])
    @villagers = @campsite.villagers
  end

  def new
    @campsite = Campsite.new
  end

  def create
    @campsite = Campsite.new(campsite_params)
    if @campsite.save
      flash[:notice] = "Added it yo"
      redirect_to campsites_path
    else
      flash[:alert] = @campsite.errors.full_messages.join(', ')
      render :new
    end
  end

  private

  def campsite_params
    params.require(:campsite).permit(:name, :owner, :description)
  end
end
