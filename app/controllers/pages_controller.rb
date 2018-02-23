class PagesController < ApplicationController
access all: :show, user: [:show], admin: :all
  def published
    @posts = Post.published
  end

  def draft
    @posts = Post.where(user_id: current_user.id)
  end
end
