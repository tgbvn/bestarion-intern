class ProductsController < ApplicationController
  private
    def product_params
      params.require(:product).permit(:sku, :title, :price, :quantity, :image)
    end

  public
    def index
      if params[:query]
        product_search = Product.where("title LIKE ?", "%" + params[:query] + "%")
        @product_list = product_search.paginate(page: params[:page], per_page: 3).order('created_at desc')
      else
        @product_list = Product.paginate(page: params[:page], per_page: 3).order('created_at desc')
      end
    end

    def show
      @product = Product.find(params[:id])
    end

    def new
      @product = Product.new
    end

    def create
      @product  = Product.new(product_params)
      if @product.save
        #Da tao san pham moi
        flash[:notice]= "New product has been created"
        redirect_to product_path(@product .id)
      else
        render :new
      end
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])
      if @product.update(product_params)
        #Da cap nhat thong tin san pham
        flash[:notice]= "The product has been updated"
        redirect_to product_path(@product .id)
      else
        render :edit
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      flash[:notice]= "The product has been removed"
      redirect_to root_path
    end

end
