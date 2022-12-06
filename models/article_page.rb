class ArticlePage < Sitepress::Model
  collection glob: "articles/*.html*"
  data :title, :description, :date

  def formatted_date
    date.strftime("%B %e, %Y")
  end
end
