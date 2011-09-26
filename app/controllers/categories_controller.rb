class CategoriesController < ApplicationController

  # GET /categories
  # GET /categories.json
  def index
    @categories = Category.all

      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }

      @posts = Post.where("post_id = ?", params[:id])
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
      #  @posts = Post.find(params[:id])
         @posts = Post.where("category_id = ?", params[:id])

    	@categories = Category.find(params[:id])
     	respond_to do |format|
      	format.html # show.html.erb
      	format.json { render json: @category }



   end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @categories = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @categories = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end





  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end


 # DELETE /categoriess/1
  # DELETE /categories/1.json
  def destroy
    @categories = Category.all
    @category = Category.find(params[:id])
    @category.destroy
   respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :ok }
    end
  end
end
