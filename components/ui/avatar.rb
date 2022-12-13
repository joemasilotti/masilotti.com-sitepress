class UI::Avatar < ViewComponent::Base
  attr_reader :large

  def initialize(large: false)
    @large = large
  end
end
