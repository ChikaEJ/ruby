ActiveAdmin.register Notice do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :category_id, :user_id, :content, :contacts

form do |f|
   f.inputs do
     f.input :category
     f.input :title
     f.input :content
     f.input :user
     f.input :contacts
   end
   f.actions
 end

show do
   attributes_table do
     row :title
     row :category
     row :user
     row :content
     row :contacts
   end
 end

end
