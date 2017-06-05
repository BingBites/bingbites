class ItemsController < ApplicationController
  layout "eateries"

  def index 
    @eatery = Eatery.friendly.find(params[:eatery_id])
    @items = @eatery.items.order('name DESC')
    @eatery_item = Item.new
  end

  def new
    @eatery = Eatery.friendly.find(params[:eatery_id])
    @eatery_item = Item.new
  end

  def create
    eatery_item = Item.find_or_create_by(name: item_params[:name], 
      description: item_params[:description])
    eatery_item.item_image = params[:item]['item_image']
    eatery_item.save!
    eatery = Eatery.friendly.find(params[:eatery_id])
    eatery.items << eatery_item
    redirect_to eatery_items_path(eatery)
  end

  private

  def item_params 
    params.require(:item).permit(:name, :description, :eatery_id, :item_image)
  end
end
