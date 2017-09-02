class AdminController < ApplicationController
  layout 'admin'
  # http_basic_authenticate_with name: 'admin', password: 'admin'
  before_action :logged_in_user, :admin_user

end