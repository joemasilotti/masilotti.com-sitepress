class Speaking::Appearance < ViewComponent::Base
  attr_reader :href, :title, :description, :event, :cta

  def initialize(href:, title:, description:, event:, cta:)
    @href, @title, @description, @event, @cta =
      href, title, description, event, cta
  end
end
