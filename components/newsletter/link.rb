class Newsletter::Link < ViewComponent::Base
  attr_reader :title, :url, :author, :twitter

  def initialize(title:, url:, author: nil, twitter: nil)
    @title, @url, @author, @twitter =
      title, url, author, twitter
  end
end
