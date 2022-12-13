class UI::Figure < ViewComponent::Base
  attr_reader :src, :alt, :title

  def initialize(src, alt:, title:)
    @src, @alt, @title = src, alt, title
  end
end
