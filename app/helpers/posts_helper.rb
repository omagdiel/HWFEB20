module PostsHelper

  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def post_img img, type

    if img.model.image?
      img
    elsif type == 'main'
      image_generator(height: '350', width: '200')
    else
      image_generator(height: '600', width: '400')
    end
  end
end
