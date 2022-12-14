Sitepress.configure do |config|
end

Sitepress.site.manipulate do |root|
  root.get("articles").children.each do |article|
    article.move_to(root)
  end
end
