class ItemsController < ApplicationController

    def index
        render json: Item.all, include: :user
    end
    
    private

    def set_item
        @item = Item.find(params[:id])
    end

end
