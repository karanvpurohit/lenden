class CreateSubCategories < ActiveRecord::Migration
  def change
    create_table :sub_categories do |t|
    	t.string	:name
    	t.string	:title
    	t.string	:description
    	t.belongs_to		:category
      t.timestamps null: false
    end
  end
end
