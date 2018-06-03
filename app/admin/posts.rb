ActiveAdmin.register Post do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :content, :user_id, :status


index do
    selectable_column
    id_column
    column :status
    column :user
    column :title
    column :created_at
    column :updated_at
    
    actions
end


    form do |f|
        f.inputs 'ブログ' do
          f.input :status
          f.input :user
          f.input :title
          f.input :content, as: :quill_editor, input_html: {
              data: {
                  options: {
                      modules: {
                          toolbar: [[{ header: [1, 2, false] }], ['bold', 'italic', 'underline'], ['link'], ['image', 'code-block', 'blockquote'], [{ 'list': 'ordered'}, { 'list': 'bullet' }],  [{ 'indent': '-1'}, { 'indent': '+1' }], [{ 'color': [] }, { 'background': [] }], [{ 'font': [] }], [{ 'align': [] }], ['clean']] }, placeholder: '※今のところ画像挿入はできないので注意', theme: 'snow'}}}
        
          f.actions
        end
        
    end


end

