class GuidesController < ApplicationController
  layout 'content'
  before_action :set_guide, only: [:show, :edit, :update, :destroy]
  access user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all
  # GET /guides
  # GET /guides.json

  def search
    if params[:search].present?
      @guides = Guide.search(params[:search], fields: [:title, :body, :course_id])
    else
      @guides = Guide.all
    end   
  end 

  def index
    @guides = Guide.all.order('order_id ASC')
  end

  # GET /guides/1
  # GET /guides/1.json
  def show
   

  end

  # GET /guides/new
  def new
    @guide = Guide.new
  end

  # GET /guides/1/edit
  def edit
  end

  # POST /guides
  # POST /guides.json
  def create
    @guide = Guide.new(guide_params)

    respond_to do |format|
      if @guide.save
        format.html { redirect_to @guide, notice: 'Guide was successfully created.' }
        format.json { render :show, status: :created, location: @guide }
      else
        format.html { render :new }
        format.json { render json: @guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guides/1
  # PATCH/PUT /guides/1.json
  def update
    respond_to do |format|
      if @guide.update(guide_params)
        format.html { redirect_to @guide, notice: 'Guide was successfully updated.' }
        format.json { render :show, status: :ok, location: @guide }
      else
        format.html { render :edit }
        format.json { render json: @guide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guides/1
  # DELETE /guides/1.json
  def destroy
    @guide.destroy
    respond_to do |format|
      format.html { redirect_to guides_url, notice: 'Guide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def upvote
    @guide = Guide.friendly.find(params[:id])
    @guide.upvote_by current_user
    redirect_back(fallback_location: root_path)
  end  
  
  def downvote
    @guide = Guide.friendly.find(params[:id])
    @guide.downvote_by current_user
    redirect_back(fallback_location: root_path)
    
  end 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guide
      @guide = Guide.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guide_params
      params.require(:guide).permit(:title, :body, :video_link, :thumb_image, :order_id, :course_id)
    end
end
