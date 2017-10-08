ActiveAdmin.register Establishment do
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
  permit_params :title, :description, :image

	form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :image, :as => :file
    end
    f.actions
  end

  index do
    column :image do |establishment|
      image_tag establishment.image.url(:thumb)
    end
    column :title do |establishment|
      link_to establishment.title, admin_establishment_path(establishment)
    end
    actions
  end

  show do
	 	attributes_table do
	   row :image do |establishment|
	     image_tag establishment.image.url(:medium)
	   	end
	   row :title
	   row :description
	 	end
	 	active_admin_comments
	end

end
