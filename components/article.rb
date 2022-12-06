class Article < ViewComponent::Base
  attr_reader :article, :wide

  def initialize(article, wide: false)
    @article, @wide = article, wide
  end
end
