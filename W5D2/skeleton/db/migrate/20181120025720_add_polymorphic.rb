class AddPolymorphic < ActiveRecord::Migration[5.1]
  def change
    remove_index :toys, :toyable_type
    
  end
end
