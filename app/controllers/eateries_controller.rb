class EateriesController < ApplicationController
  before_action :find_eatery, only: [:show, :edit, :update, :destroy] 

  def index
    redirect_to root_path unless current_user
    if params[:category].blank?
      @eateries = Eatery.search(params[:search])
    else
      @category = Category.find_by(name: params[:category]).id
      @eateries = Eatery.where(category_id: @category).order('created_at DESC')
    end
  end

  def show
  end

  def new
    @eatery = Eatery.new
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def create
    @eatery = Eatery.new(eatery_params)
    respond_to do |format|
      if @eatery.save
        format.html { redirect_to root_path, notice: 'eatery was successfully created.' }
        format.json { render :show, status: :created, location: @eatery }
      else
        format.html { render :new }
        format.json { render json: @eatery.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @categories = Category.all.map { |c| [c.name, c.id] }
  end

  def update
    if @eatery.update(eatery_params)
      redirect_to eatery_path(eatery_params)
    else
      render 'edit'
    end
  end
 
  def destroy
    redirect_to root_path if @eatery.destroy
  end


  private
  
  def eatery_params 
    params.require(:eatery).permit(:name, :address, :category_id, :eatery_img, :lat, :long) 
  end

  def find_eatery
    @eatery = Eatery.find(params[:id])
  end
end