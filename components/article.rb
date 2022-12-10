class Article < ViewComponent::Base
  attr_reader :article, :wide, :hide_date

  def initialize(article, wide: false, hide_date: false)
    @article, @wide, @hide_date = article, wide, hide_date
  end
end
