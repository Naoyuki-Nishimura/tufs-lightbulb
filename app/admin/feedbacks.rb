ActiveAdmin.register Feedback do

    permit_params :feedback 
    
    index do
        selectable_column
        id_column
        column :description
        column :created_at
        column :updated_at
        
        actions
    end



form do |f|
    f.inputs 'レビュー' do
        f.input :description
       
    end
    f.actions
end
end
