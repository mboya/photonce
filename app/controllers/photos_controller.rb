class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  	@order_item = current_order.order_items.new
  end

  def new
  	@photo = Photo.new
  end

  def create
    # @user = current_user
    # @photo_item = @user.photo.new(photo_params)

  	@photo = Photo.new(photo_params)
  	respond_to do |format|
  		if @photo.save
  			format.html { redirect_to new_photo_path, notice: 'Photo was successfully created.' }
        	format.json { render :new, status: :created, location: @photo }
  		else
  			format.html { render :new }
        	format.json { render json: @photo.errors, status: :unprocessable_entity }
  		end
  	end
  end

  private
  	def set_photo
  		@photo = Photo.find(params[:id])
  	end
  	def photo_params
  		params.require(:photo).permit(:image, :name, :price, :active, :user_id)
  	end
end
