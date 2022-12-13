class UI::Header < ViewComponent::Base
  attr_reader :request_path, :large_avatar

  def initialize(request_path:, large_avatar: false)
    @request_path, @large_avatar = request_path, large_avatar
  end
end
