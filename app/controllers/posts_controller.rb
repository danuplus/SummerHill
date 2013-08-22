class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
	before_filter :authenticate_user!, except: [:index, :show]
	impressionist

  # GET /posts
  # GET /posts.json
  def index
		@offset = 20
		@page = params[:page]
		if category = PostCategory.find_by_name(params[:category])
			@posts = category.posts.order('created_at desc').page(@page).per(@offset)
			@total_count = category.posts.count
			@category = params[:category]
			@cate_id = category.name
		else
			@posts = Post.search(params[:search]).page(@page).per(@offset)
			@total_count = Post.search(params[:search]).count
			@category = 'Result'
		end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
		@page = params[:page]
  end

  # GET /posts/new
  def new
		@category = PostCategory.find_by_name(params[:category])
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
		@category = PostCategory.find_by_name(params[:category])
		@page = params[:page]
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
		category = params[:category]
		page = params[:page]
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url(:category => category, :page => page) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:post_category_id, :user_id, :title, :desc)
    end
end
