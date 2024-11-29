# frozen_string_literal: true

class Components::Layout < Components::Base
  # include ActionView::Helpers::AssetTagHelper
  # include Importmap::ImportmapTagsHelper
  include Phlex::Rails::Layout

  def initialize(title:)
    @title = title
  end

  def view_template
    doctype

		html do
			head do
				title { "You're awesome" }
				meta name: "viewport", content: "width=device-width,initial-scale=1"

				csp_meta_tag
				csrf_meta_tags

				# stylesheet_link_tag "application.tailwind", data_turbo_track: "reload"
				stylesheet_link_tag "tailwind", "inter-font", data_turbo_track: "reload"
				javascript_importmap_tags
			end

			body { yield }
		end
  end
end
