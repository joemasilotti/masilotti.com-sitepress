class Card::Link < ViewComponent::Base
  attr_reader :href, :options

  def initialize(href, options: {})
    @href, @options = href, options
  end
end
