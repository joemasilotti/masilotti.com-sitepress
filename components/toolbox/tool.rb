class Toolbox::Tool < ViewComponent::Base
  attr_reader :title, :description, :href

  def initialize(title:, description:, href: nil)
    @title, @description, @href = title, description, href
  end
end
