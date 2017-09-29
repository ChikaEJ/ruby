ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :price, :category_id, :description, :image

#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form do |f|
    f.inputs do
      f.input :category
      f.input :title
      f.input :description
      f.input :price
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end
  index do
    selectable_column
    id_column
    column :image do |product|
      image_tag product.image.url(:thumb)
    end
    column :title do |product|
      link_to product.title, admin_product_path(product)
    end
    column :price
    column :category
    actions
  end
  show do
   attributes_table do
     row :image do |product|
       image_tag product.image.url(:medium)
     end
     row :title
     row :category
     row :price
     row :description
   end
   active_admin_comments
  end



end
