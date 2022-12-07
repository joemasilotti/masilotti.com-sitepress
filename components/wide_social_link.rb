class WideSocialLink < ViewComponent::Base
  attr_reader :href, :icon, :class_name

  def initialize(href:, icon:, class_name: nil)
    @href, @icon, @class_name = href, icon, class_name
  end
end
