require "redcarpet"
require "rouge"

class ApplicationMarkdown < MarkdownRails::Renderer::Rails
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

  def block_code(code, language)
    content_tag :pre, class: "language-#{language}" do
      content_tag :code, class: "code language-#{language}" do
        raw highlight_code code, language
      end
    end
  end
end
