class TagsController < ApplicationController
  before_action :set_tag, only: :show

  def show
    @tagdetails = @tag.tagdetails.page(params[:page]).per(15)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:name)
    end
end
