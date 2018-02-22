class PagesController < ApplicationController

  def published
    @posts = Post.published
  end

  def draft
  end
end
