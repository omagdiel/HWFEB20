class PagesController < ApplicationController

  def published
    @posts = Post.published
  end

  def draft
    @posts = Post.all
  end
end