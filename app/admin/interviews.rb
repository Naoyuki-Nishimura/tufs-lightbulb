ActiveAdmin.register Interview do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :name, :pdf
    
    index do
        selectable_column
        id_column
        column :name
        column :created_at
        column :updated_at
        
        actions
    end



form do |f|
    f.inputs 'インタビュー記事作成記事' do
        f.input :name
        f.input :pdf
       
    end
    f.actions
end


end
