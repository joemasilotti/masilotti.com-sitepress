module RenderHelper
  def render_proseless(partial, options = {})
    content_tag :div, class: "not-prose" do
      render partial, **options
    end
  end
end
