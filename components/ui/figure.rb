class UI::Figure < ViewComponent::Base
  attr_reader :src, :title, :href

  def initialize(src, title:, href: nil)
    @src, @title, @href = src, title, href
  end
end
