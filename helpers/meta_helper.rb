module MetaHelper
  def title
    [current_page.data.title, "Masilotti.com"].compact.join(" | ")
  end

  def description
    current_page.data.description.presence || data.site.description
  end

  def url
    data.site.url + current_page.request_path
  end

  def image
    image_url(current_page.data.image || data.site.image)
  end

  def twitter
    "@#{data.socials.twitter.handle}"
  end

  def twitter_card
    # TODO: Always large?
    "summary_large_image"
  end
end
