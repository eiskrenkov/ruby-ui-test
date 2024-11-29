# frozen_string_literal: true

class Views::Home::IndexView < Views::Base
  # include RBUI

  def view_template
    h1 { "Home::Index" }
    p { "Find me in app/views/home/index_view.rb" }

    # Alert do
    #   # rocket_icon
    #   AlertTitle { "Pro tip" }
    #   AlertDescription { "With RBUI you'll ship faster." }
    # end
  end
end
