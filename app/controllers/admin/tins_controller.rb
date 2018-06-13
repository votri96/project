class Admin::TinsController < AdminController
  before_action :set_tin, only: [:show, :edit, :update, :destroy]

  # GET /tins
  # GET /tins.json
  def index
    @tins = Tin.all.page(params[:page]).per(10)
  end

  # GET /tins/1
  # GET /tins/1.json
  def show
  end

  # GET /tins/new
  def new
    @tin = Tin.new
    @tins = Tin.all
  end

  # GET /tins/1/edit
  def edit
  end

  # POST /tins
  # POST /tins.json
  def create
    @tin = Tin.new(tin_params)
    @tin.create_by = current_user.username
    @tin.update_by = current_user.username
    respond_to do |format|
      if @tin.save
        format.html { redirect_to admin_tins_url, notice: 'Tin was successfully created.' }
        format.json { render :show, status: :created, location: @tin }
      else
        format.html { render :new }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tins/1
  # PATCH/PUT /tins/1.json
  def update
    respond_to do |format|
      if @tin.update(tin_params)
        @tin.update_by = current_user.username
        @tin.save
        format.html { redirect_to admin_tins_url, notice: 'Tin was successfully updated.' }
        format.json { render :show, status: :ok, location: @tin }
      else
        format.html { render :edit }
        format.json { render json: @tin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tins/1
  # DELETE /tins/1.json
  def destroy
    @tin.destroy
    respond_to do |format|
      format.html { redirect_to admin_tins_url, notice: 'Tin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tin
      @tin = Tin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tin_params
      params.require(:tin).permit(:name, :title, :content, :image, :create_by, :update_by, :viewcount, :showonhome, :tophot, :category1_id, :category2_id)
    end
end
