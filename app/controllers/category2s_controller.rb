class Category2sController < ApplicationController
  
  def show
    @category2 = Category2.find(params[:id])
    @tins = @category2.tins.page(params[:page]).per(15)
  end
end