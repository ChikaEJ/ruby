class AdminController < ApplicationController
  layout 'admin'
  layout 'application', only: [:about]
    before_action :check_user
    def about
      #code
    end
end
