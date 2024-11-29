# frozen_string_literal: true

class Views::Home::Index < Views::Base
  def view_template
    Layout(title: "Home") do
      h1 { "Home::Index" }
      p { "Find me in app/views/home/index_view.rb" }

      Alert(variant: :warning) do
        # rocket_icon
        AlertTitle { "Pro tip2" }
        AlertDescription { "With RBUI you'll ship faster." }
      end

      Card(class: 'w-96 overflow-hidden') do
        CardHeader do
          div(class: 'w-10 h-10 rounded-xl flex items-center justify-center bg-violet-100 text-violet-700 -rotate-6') do
            # cash_icon
          end
        end

        CardContent(class: 'space-y-1') do
          CardDescription(class: 'font-medium') { "Current Balance" }
          h5(class: 'font-semibold text-4xl') { '$2,602' }
        end

        CardFooter do
          Text(size: "2", class: "text-muted-foreground") { "**** 4620" }
        end
      end
    end
  end
end
