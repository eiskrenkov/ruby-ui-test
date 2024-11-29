class HomeController < ApplicationController
  def index
    render Views::Home::IndexView
  end
end
