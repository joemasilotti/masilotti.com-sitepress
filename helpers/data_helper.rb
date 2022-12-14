module DataHelper
  def dataset(key)
    path = Sitepress.site.root_path.join("data", "#{key}.yml")
    Sitepress::Data.manage(YAML.load_file(path))
  end

  def data
    keys = Dir.glob("data/*.yml").map do |path|
      File.basename(path, ".yml").to_sym
    end

    Struct.new(*keys).new(*keys.map { |key| dataset(key) })
  end
end
