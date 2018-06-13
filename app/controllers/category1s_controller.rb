class Category1sController < ApplicationController
  
  def show
    @category1 = Category1.find(params[:id])
    @category2s = @category1.category2s
  end
end