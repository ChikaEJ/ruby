rails generate scaffold Post name:string desc:text user:references active:boolean

gem 'simple_form'
gem 'devise'

rails generate simple_form:install

rails generate devise:install

rails generate devise user

rails generate migration AddRoleToUser admin:boolean

before_action :configure_permitted_parameters, if: :devise_controller?

private
def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:admin, :user])
end

root "posts#index"

gem 'cancan'

<% if user_signed_in? %>
<h4>Hi <%= current_user.email %> || <%= link_to 'Exit', destroy_user_session_path, method: :delete %> </h4>
<% else %>
<h4><%= link_to 'Sign up', new_user_registration_path %> || <%= link_to 'Log in', new_user_session_path %></h4>
<% end %>


admin = User.create(email: 'admin@bla.com', password: 'qweqwe', password_confirmation: 'qweqwe', admin: true)
user1 = User.create(email: 'user1@bla.com', password: 'qweqwe', password_confirmation: 'qweqwe')

post = Post.create(name: "Post1 from User1", desc: "Some description for post1")

user ||= User.new # guest user (not logged in)

if user.admin?
  can :manage, :all
elsif user.user?
  can :edit, Post, :user_id => user.id
  can :read, Post
else
  can :read, Post
end

<td><%= link_to 'Show', post if can? :read, post %></td>
<td><%= link_to 'Edit', edit_post_path(post) if can? :manage, :all %></td>
<td><%= link_to 'Destroy', post, method: :delete, data: { confirm: 'Are you sure?' } if can? :manage, :all %></td>

authorize! :read, Post
load_and_authorize_resource

permisssion denied

rescue_from CanCan::AccessDenied do |exception|
  render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
  ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
  ## this render call should be:
  # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
end
