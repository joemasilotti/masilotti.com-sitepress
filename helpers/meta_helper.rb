module MetaHelper
  def title
    [current_page.data.title, "Masilotti.com"].compact.join(" | ")
  end

  def description
    current_page.data.description.presence || data.site.description
  end

  def url
    path = current_page.request_path.delete_prefix("/")
    page_url(path, host:)
  end

  def image
    image = current_page.data.image || data.site.image
    image_url(image, host:)
  end

  def twitter
    "@#{data.socials.twitter.handle}"
  end

  def twitter_card
    # TODO: Always large?
    "summary_large_image"
  end

  private

  def host
    ENV.fetch("HOST", "http://localhost:8080")
  end
end
