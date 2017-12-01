class ListItemsController < ApplicationController
# index, show, new, edit, create, update, destroy
    def index
        @list_item = ListItem.all
    end
    
    def show
        @list_item = ListItem.find(params[:id])
    end

    def new
    end

    # def edit
    # end

    def create
        @list_item = ListItem.new(list_item_params) 
        
        @list_item.save
        redirect_to @list_item
    end

    #def update
    #end

    # def destroy
    # end

    private
        def list_item_params
            params.require(:list_item).permit(:title, :text)
        end 
end
