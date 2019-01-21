class CreatePostAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :post_admins do |t|
      t.string :title
      t.string :subtitle
      t.string :topic
      t.text :content
      t.string :image_url

      t.timestamps
    end
  end
end
