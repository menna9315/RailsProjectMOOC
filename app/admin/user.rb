ActiveAdmin.register User do
    permit_params :email, :name, :gender, :encrypted_password
    index do
        selectable_column
        id_column
        column :email
        column :name
        column :gender
        column :encrypted_password

        actions
      end
  
      form do |f|
        f.inputs do
          f.input :email
          f.input :encrypted_password
          f.input :name
          f.input :gender
        end
        f.actions
      end
  
  end