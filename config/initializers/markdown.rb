# Restart the server to see changes made to this file.

MarkdownRails.handle :md, :markdown do
  ApplicationMarkdown.new
end

# Enable Erb in markdown files with the .markerb extension. Only use for
# trusted content to ensure no arbitrary code is executed.
MarkdownRails.handle :markerb, with: MarkdownRails::Handler::Erb do
  ApplicationMarkdown.new
end
