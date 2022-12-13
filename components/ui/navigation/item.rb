class UI::Navigation::Item < ViewComponent::Base
  attr_reader :title, :href, :request_path

  def initialize(title, href, request_path:)
    @title, @href, @request_path = title, href, request_path
  end

  def active?
    request_path == href
  end
end
