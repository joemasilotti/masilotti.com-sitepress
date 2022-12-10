class ArticlePage < Sitepress::Model
  data :title, :description, :date, :favorite, :index

  def self.all
    site
      .glob("articles/*.html*")
      .map { |page| new page }
      .sort_by(&:date)
      .reverse
  end

  def self.favorites
    all
      .select { |page| page.favorite }
      .sort_by { |page| [page.index || Float::INFINITY, page.date] }
  end

  def formatted_date
    date.strftime("%B %e, %Y")
  end
end
