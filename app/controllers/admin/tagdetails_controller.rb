class Admin::TagdetailsController < AdminController
  before_action :set_tagdetail, only: [:show, :edit, :update, :destroy]

  # GET /tagdetails
  # GET /tagdetails.json
  def index
    @tagdetails = Tagdetail.all.page(params[:page]).per(10)
  end

  # GET /tagdetails/1
  # GET /tagdetails/1.json
  def show
  end

  # GET /tagdetails/new
  def new
    @tagdetail = Tagdetail.new
  end

  # GET /tagdetails/1/edit
  def edit
  end

  # POST /tagdetails
  # POST /tagdetails.json
  def create
    @tagdetail = Tagdetail.new(tagdetail_params)

    respond_to do |format|
      if @tagdetail.save
        format.html { redirect_to admin_tagdetails_url, notice: 'Tagdetail was successfully created.' }
        format.json { render :show, status: :created, location: @tagdetail }
      else
        format.html { render :new }
        format.json { render json: @tagdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tagdetails/1
  # PATCH/PUT /tagdetails/1.json
  def update
    respond_to do |format|
      if @tagdetail.update(tagdetail_params)
        format.html { redirect_to admin_tagdetails_url, notice: 'Tagdetail was successfully updated.' }
        format.json { render :show, status: :ok, location: @tagdetail }
      else
        format.html { render :edit }
        format.json { render json: @tagdetail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tagdetails/1
  # DELETE /tagdetails/1.json
  def destroy
    @tagdetail.destroy
    respond_to do |format|
      format.html { redirect_to admin_tagdetails_url, notice: 'Tagdetail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tagdetail
      @tagdetail = Tagdetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tagdetail_params
      params.require(:tagdetail).permit(:tag_id, :tin_id)
    end
end
