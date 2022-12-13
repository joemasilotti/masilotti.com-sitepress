class NewsletterPage < Sitepress::Model
  data :title, :description, :date

  def self.all
    site
      .glob("hotwire/*.html*")
      .map { |page| new page }
      .sort_by(&:date)
      .reverse
  end

  def edition
    "#{date.strftime("%B %Y")} edition"
  end
end
