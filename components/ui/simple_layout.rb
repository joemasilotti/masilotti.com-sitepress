class UI::SimpleLayout < ViewComponent::Base
  attr_reader :title, :intro, :newsletter

  def initialize(title: nil, intro: nil, newsletter: false)
    @title, @intro, @newsletter = title, intro, newsletter
  end
end
