class UI::Card::Title < ViewComponent::Base
  attr_reader :as, :href

  def initialize(as: "h2", href: nil)
    @as, @href = as, href
  end
end
