# frozen_string_literal: true

class FranchisesController < ApplicationController
  before_action :set_franchise, only: %i[show destroy edit update]

  def index
    if (params.has_key?(:franchise_type))
      @franchises = Franchise.where(franchise_type: params[:franchise_type]).order("created_at desc")
    else  
      @pagy, @franchises = pagy Franchise.order(created_at: :desc)
      @franchises = @franchises.decorate
    end
  end

  def new
    @franchise = current_user.franchises.build        #Franchise.new
  end

  def create
    @franchise = current_user.franchises.build franchise_params
    franchise = params[:franchise_type]
    franchise_title = params[:title]
    if @franchise.save
      flash[:success] = ('Franchise created!')
      redirect_to franchises_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @franchise.update franchise_params
      flash[:success] = 'Franchise updated!'
      redirect_to franchises_path
    else
      render :edit
    end
  end

  def destroy
    @franchise.destroy
    flash[:success] = 'Franchise delited!'
    redirect_to franchises_path
  end

  def show
    @franchise = @franchise.decorate
  end

  private

  def franchise_params
    params.require(:franchise).permit(:title, :description, :investment, :franchise_type, :location, :franchise_author, :about_company,  :contribution_franchise, :royality_franchise, :unp_franchise, :cost_franchise, :additionally_franchise, :avatar, :images )
  end

  def set_franchise
    @franchise = Franchise.find params[:id]
  end
end

