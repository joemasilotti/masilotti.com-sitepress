require "redcarpet"
require "rouge"

class ApplicationMarkdown < MarkdownRails::Renderer::Rails
  # Reformats punctation like " and " into “ and ”.
  # https://github.com/vmg/redcarpet#also-now-our-pants-are-much-smarter
  include Redcarpet::Render::SmartyPants

  # Syntax Highlighting
  include MarkdownRails::Helper::Rouge

  # These flags control features in the Redcarpet renderer.
  # https://github.com/vmg/redcarpet#and-its-like-really-simple-to-use
  def enable
    [:fenced_code_blocks]
  end
end
