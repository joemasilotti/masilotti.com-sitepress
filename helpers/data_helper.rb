module DataHelper
  def data(dataset)
    path = Sitepress.site.root_path.join("data", "#{dataset}.yml")
    JSON.parse(YAML.load_file(path).to_json, object_class: OpenStruct)
  end
end
