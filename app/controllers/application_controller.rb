class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :load_category1

  private 
  def load_category1
    @category1s = Category1.order("displayorder asc").where(showonhome: true)
    @tin_hots = Tin.order("created_at desc").where(tophot: true)
    @tin_news = Tin.order("created_at desc").limit(5)
    @tin_views = Tin.order("viewcount desc").limit(5)
  end
end
