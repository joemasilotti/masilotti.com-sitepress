class Newsletter < ViewComponent::Base
  attr_reader :newsletter

  def initialize(newsletter)
    @newsletter = newsletter
  end
end
