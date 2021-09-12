class FranchisesController < ApplicationController
  before_action :set_franchise, only: %i[show destroy edit update]

  def index
    @franchises = Franchise.all
  end	

  def new
    @franchise = Franchise.new
  end	

  def create
    @franchise = Franchise.new franchise_params
    if @franchise.save
      flash[:success] = "Franchise created!"	
      redirect_to franchises_path
    else
      render :new  
    end  
  end

  def edit
  end

  def update
    if @franchise.update franchise_params
      flash[:success] = "Franchise updated!"   	
      redirect_to franchises_path
    else
      render :edit  
    end  
  end

  def destroy
    @franchise.destroy
    flash[:success] = "Franchise delited!"
    redirect_to franchises_path
  end 

  def show
  end	
  	
  private

  def franchise_params
  	params.require(:franchise).permit(:title, :description)
  end

  def set_franchise
    @franchise = Franchise.find params[:id]
  end

end 