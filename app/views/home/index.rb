# frozen_string_literal: true

class Views::Home::Index < Views::Base
  # include RBUI

  def view_template
    Layout(title: "Home") do
      h1 { "Home::Index" }
      p { "Find me in app/views/home/index_view.rb" }

      Alert(variant: :warning) do
        # rocket_icon
        AlertTitle { "Pro tip2" }
        AlertDescription { "With RBUI you'll ship faster." }
      end
    end
  end
end
