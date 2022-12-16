class ArticlePage < Sitepress::Model
  data :title, :description, :date, # Required
    :favorite, :index, # Optional
    :series, :series_title, :series_path # Series

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

  def back_href
    series_path || "/articles"
  end

  def series?
    series.present?
  end
end
