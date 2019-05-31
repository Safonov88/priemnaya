ActiveAdmin.register Group do
  permit_params :department_id, :stream_id, :number

  index do
    id_column
    column :number
    column :department
    column :stream
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.semantic_errors
    inputs :number, :department
    f.input :stream, as: :select, collection: Stream.order(:number).pluck(:number, :id)

    f.actions
  end
end
