ActiveAdmin.register User do
    permit_params :email, :name, :gender, :password, :date_of_birth, :profile_picture
    index do
        selectable_column
        id_column
        column :email
        column :name
        column :gender
        column :date_of_birth
        column :profile_picture

        actions
      end


      filter :email
      show do |user|
        attributes_table do
        row :email
        row :created_at
        row :updated_at
        end
      end

  
      form do |f|
        f.inputs do
          f.input :email
          f.input :password
          f.input :name
          f.input :gender
          f.input :date_of_birth
          f.input :profile_picture

        end
        f.actions
      end





      
  
  end