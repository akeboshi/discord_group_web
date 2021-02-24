ActiveAdmin.register Employee do
  permit_params :name, :department, :gender, :birth, :joined_date, :payment, :note
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :department, :gender, :birth, :joined_date, :payment, :note
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :department, :gender, :birth, :joined_date, :payment, :note]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
