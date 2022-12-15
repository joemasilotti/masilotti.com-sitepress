class EmailCapture < ViewComponent::Base
  include DataHelper

  attr_reader :cta, :class_name

  def initialize(newsletter = nil, cta: "Subscribe", class_name: nil)
    @newsletter, @cta, @class_name = newsletter, cta, class_name
  end

  def newsletter
    @newsletter ||= data.newsletters.hotwire
  end
end
