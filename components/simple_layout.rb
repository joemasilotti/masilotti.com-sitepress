class SimpleLayout < ViewComponent::Base
  attr_reader :title, :intro

  def initialize(title:, intro:)
    @title, @intro = title, intro
  end
end
