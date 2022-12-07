class Section < ViewComponent::Base
  attr_reader :title

  def initialize(title)
    @title = title
  end
end
