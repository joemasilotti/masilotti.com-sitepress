class Button < ViewComponent::Base
  attr_reader :href, :properties

  def initialize(variant = :primary, href: nil, class_name: nil, properties: {})
    @variant, @href, @class_name, @properties = variant, href, class_name, properties
  end

  def class_name
    [
      "inline-flex items-center gap-2 justify-center rounded-md py-2 px-3 text-sm outline-offset-2 transition active:transition-none",
      variant_class_name[variant],
      @class_name
    ]
  end

  private

  def variant
    (@variant == :secondary) ? :secondary : :primary
  end

  def variant_class_name
    {
      primary: "bg-zinc-800 font-semibold text-zinc-100 hover:bg-zinc-700 active:bg-zinc-800 active:text-zinc-100/70",
      secondary: "bg-zinc-50 font-medium text-zinc-900 hover:bg-zinc-100 active:bg-zinc-100 active:text-zinc-900/60"
    }
  end
end