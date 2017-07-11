class PagesController < ApplicationController
  def home
    @variable = 2 ** 8
  end
end
