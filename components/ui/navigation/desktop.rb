class UI::Navigation::Desktop < ViewComponent::Base
  attr_reader :request_path

  def initialize(request_path:)
    @request_path = request_path
  end
end
