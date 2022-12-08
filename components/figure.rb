class Figure < ViewComponent::Base
  attr_reader :src, :caption, :href, :options

  def initialize(src, caption:, href: nil, **options)
    @src, @caption, @href, @options = src, caption, href, options
  end
end
