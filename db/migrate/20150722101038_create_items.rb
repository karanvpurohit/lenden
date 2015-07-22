class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.string	:name
    	t.string	:title
    	t.string	:description
    	t.belongs_to		:sub_category
    	t.belongs_to		:user
      t.timestamps null: false
    end
  end
end
