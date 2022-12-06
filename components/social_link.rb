class SocialLink < ViewComponent::Base
  attr_reader :href, :label, :icon

  def initialize(href:, label:, icon:)
    @href, @label, @icon = href, label, icon
  end
end
