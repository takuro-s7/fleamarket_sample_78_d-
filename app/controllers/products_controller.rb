class ProductsController < ApplicationController
  before_action :set_product, except: [:index, :new, :create]

  def index
  end
  
  def new
    @product = Product.new
    @product.images.new
    # if user_signed_in?
    #   @product = Product.new
    #   @product.images.new
    # else
    #   redirect_to root_path
    # end
  end

  def create
    @product = Product.new(product_params)
    if params[:product][:images_attributes] && @product.save
      redirect_to root_path
    else
      @product.images.new
      render :new
    end
  end

  def show
  end

  def update
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:name, :category_id, :price, :description, :size, :brand, :status, :condition, :send_price, 
                                    :shipping_date, :prefecture, :buyer_id, images_attributes: [:image, :_destroy, :id]).merge(user_id: current_user.id)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
