class ArticlePage < Sitepress::Model
  collection glob: "articles/*.html*"
  data :title, :description

  def date
    Chronic.parse(page.data.fetch("date"))
  end

  def formatted_date
    date.strftime("%B %e, %Y")
  end
end
