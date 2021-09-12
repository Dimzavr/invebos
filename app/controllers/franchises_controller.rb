class FranchisesController < ApplicationController
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
  	@franchise = Franchise.find_by id: params[:id]
  end

  def update
  	@franchise = Franchise.find_by id: params[:id]
    if @franchise.update franchise_params
      flash[:success] = "Franchise updated!"   	
      redirect_to franchises_path
    else
      render :edit  
    end  
  end

  def destroy
    @franchise = Franchise.find_by id: params[:id]
    @franchise.destroy
    flash[:success] = "Franchise delited!"
    redirect_to franchises_path
  end 

  def show
    @franchise = Franchise.find_by id: params[:id]
  end	
  	
  private

  def franchise_params
  	params.require(:franchise).permit(:title, :description)
  end

end 