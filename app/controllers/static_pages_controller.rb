class StaticPagesController < ApplicationController
  def index
  	@posts = Post.order("created_at DESC")
  end

  def statistics
  	@users = User.all.count
  	@userspaid0 = User.where(:paid => 0).count
  	@userspaid1 = User.where(:paid => 1).count
  	@userspaid2 = User.where(:paid => 2).count
  end
end
