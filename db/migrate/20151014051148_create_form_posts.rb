class CreateFormPosts < ActiveRecord::Migration
  def change
    create_table :form_posts do |t|
      t.string :name
      t.integer :age
      t.string :grade
      t.string :gender
      t.string :email
      t.string :date
      t.string :password
      t.text :content

      t.timestamps null: false
    end
  end
end
