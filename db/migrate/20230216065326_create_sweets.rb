class CreateSweets < ActiveRecord::Migration[7.0]
  def change
    create_table :sweets do |t|
      
      t.timestamps
    end
  end
end
