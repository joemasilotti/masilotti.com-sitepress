class WideSocialLink < ViewComponent::Base
  attr_reader :href, :label, :icon, :class_name

  def initialize(href:, label:, icon:, class_name: nil)
    @href, @label, @icon, @class_name = href, label, icon, class_name
  end
end
