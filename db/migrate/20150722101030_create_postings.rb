class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
    	t.string	:name
    	t.string	:title
    	t.string	:user_id
      t.timestamps null: false
    end
  end
end
