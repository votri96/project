class TinsController < ApplicationController
  impressionist actions: [:show]
  def show
    @tin = Tin.find(params[:id])
    @tin.viewcount = @tin.viewcount + 1
    @tin.save
    @comments = @tin.comments.order("created_at desc")
    @new_comment = @tin.comments.new
    @tagdetails = @tin.tagdetails
  end
end
