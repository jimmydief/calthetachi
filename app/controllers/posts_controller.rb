class PostsController < ApplicationController
  http_basic_authenticate_with :name => "calthetachi", :password => "arthurchase", :except => [:index, :show]
  
  # GET /posts
  # GET /posts.json
  def index
    if params[:query].present?
      @query = params[:query]
      @posts = Post.search(@query)
    else  
      @posts = Post.order("created_at DESC")
    end
    
    page = params[:page] || 1
    
    @total = @posts.count
    @posts = @posts.page(page).per(5)
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find_by_slug!(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find_by_slug!(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created!' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find_by_slug!(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated!' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find_by_slug!(params[:id])

    respond_to do |format|
      if @post.destroy
        format.html { redirect_to posts_url, notice: 'Post was successfully deleted!' }
        format.json { head :no_content }
      end
    end
  end
end
