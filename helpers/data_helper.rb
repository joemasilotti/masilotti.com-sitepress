require "ostruct"

module DataHelper
  def data(dataset)
    path = Sitepress.site.root_path.join("data", "#{dataset}.yml")
    data = YAML.load_file(path)
    if data.is_a?(Hash)
      OpenStruct.new(data)
    else
      data.map { |h| OpenStruct.new(h) }
    end
  end
end
