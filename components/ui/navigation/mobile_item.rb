class UI::Navigation::MobileItem < ViewComponent::Base
  attr_reader :title, :href

  def initialize(title, href)
    @title, @href = title, href
  end
end
