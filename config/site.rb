Sitepress.configure do |config|
end

Sitepress.site.manipulate do |resource, root|
  move_articles_to_root(resource, root)
end

def move_articles_to_root(resource, root)
  if resource.request_path.starts_with? "/articles"
    node = resource.node
    node.formats.remove ".html"
    node.remove

    root.add_child(node.name.dasherize).formats.add asset: resource.asset, format: resource.format
  end
end
