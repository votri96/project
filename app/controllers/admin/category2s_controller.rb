class Admin::Category2sController < AdminController
  before_action :set_category2, only: [:show, :edit, :update, :destroy]

  # GET /category2s
  # GET /category2s.json
  def index
    @category2s = Category2.all.page(params[:page]).per(10)
  end

  # GET /category2s/1
  # GET /category2s/1.json
  def show
  end

  # GET /category2s/new
  def new
    @category2 = Category2.new
  end

  # GET /category2s/1/edit
  def edit
  end

  # POST /category2s
  # POST /category2s.json
  def create
    @category2 = Category2.new(category2_params)

    respond_to do |format|
      if @category2.save
        format.html { redirect_to admin_category2s_url, notice: 'Category2 was successfully created.' }
        format.json { render :show, status: :created, location: @category2 }
      else
        format.html { render :new }
        format.json { render json: @category2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category2s/1
  # PATCH/PUT /category2s/1.json
  def update
    respond_to do |format|
      if @category2.update(category2_params)
        format.html { redirect_to admin_category2s_url, notice: 'Category2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @category2 }
      else
        format.html { render :edit }
        format.json { render json: @category2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category2s/1
  # DELETE /category2s/1.json
  def destroy
    @category2.destroy
    respond_to do |format|
      format.html { redirect_to admin_category2s_url, notice: 'Category2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category2
      @category2 = Category2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category2_params
      params.require(:category2).permit(:name, :category1_id)
    end
end
