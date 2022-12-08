module ImagesHelper
  def figure_tag(src, caption:, href: "", **options)
    render Figure.new(src, caption:, href:, **options)
  end
end
