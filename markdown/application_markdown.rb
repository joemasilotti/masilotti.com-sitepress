require "redcarpet"
require "rouge"

class ApplicationMarkdown < MarkdownRails::Renderer::Rails
  delegate :render, to: :ApplicationController

  # Reformats punctation like " and " into “ and ”.
  # https://github.com/vmg/redcarpet#also-now-our-pants-are-much-smarter
  include Redcarpet::Render::SmartyPants

  # Syntax Highlighting
  include MarkdownRails::Helper::Rouge

  def rouge_formatter
    ::Rouge::Formatters::HTML.new
  end

  # These flags control features in the Redcarpet renderer.
  # https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use
  def enable
    [:fenced_code_blocks]
  end

  # Inline newsletter CTA: `![Subscribe!](cta://newsletter)`
  def image(link, title, alt_text)
    url = URI.parse(link)

    case url.scheme
    when "cta"
      render partial: File.join("partials/ctas/#{url.host}"), locals: {title: alt_text}
    else
      render Figure.new(link, alt: alt_text, title:)
    end
  end

  def block_code(code, language)
    content_tag :pre, class: "language-#{language}" do
      content_tag :code, class: "code language-#{language}" do
        raw highlight_code code, language
      end
    end
  end
end
