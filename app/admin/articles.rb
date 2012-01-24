ActiveAdmin.register Article do
  index do
    column :id
    column :title
    column :abstract
    column :publish_date
    column :rank
    column :reads
    column :comments_attracted
    column :created_at
    column :updated_at
    default_actions
  end

  form :partial => "form"
end
