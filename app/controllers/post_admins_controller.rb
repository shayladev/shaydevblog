class PostAdminsController < ApplicationController
  before_action :set_post_admin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :only => [:new, :edit, :create, :destroy, :update]
  load_and_authorize_resource :only => [:index, :new, :edit, :create, :destroy, :update]

  # GET /post_admins
  # GET /post_admins.json
  def index
    @post_admins = PostAdmin.all
  end

  # GET /post_admins/1
  # GET /post_admins/1.json
  def show
  end

  # GET /post_admins/1
  # GET /post_admins/1.json
  # def read
  #   @post_admins = PostAdmin.find(params[:id])
  # end

  # GET /post_admins/new
  def new
    @post_admin = PostAdmin.new
  end

  # GET /post_admins/1/edit
  def edit
  end

  # POST /post_admins
  # POST /post_admins.json
  def create
    @post_admin = PostAdmin.new(post_admin_params)

    respond_to do |format|
      if @post_admin.save
        format.html { redirect_to @post_admin, notice: 'Post admin was successfully created.' }
        format.json { render :show, status: :created, location: @post_admin }
      else
        format.html { render :new }
        format.json { render json: @post_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_admins/1
  # PATCH/PUT /post_admins/1.json
  def update
    respond_to do |format|
      if @post_admin.update(post_admin_params)
        format.html { redirect_to @post_admin, notice: 'Post admin was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_admin }
      else
        format.html { render :edit }
        format.json { render json: @post_admin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_admins/1
  # DELETE /post_admins/1.json
  def destroy
    @post_admin.destroy
    respond_to do |format|
      format.html { redirect_to post_admins_url, notice: 'Post admin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_admin
      @post_admin = PostAdmin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_admin_params
      params.require(:post_admin).permit(:title, :subtitle, :topic, :content, :image_url)
    end
end
