class CreateAngels < ActiveRecord::Migration[6.0]
  def change
    create_table :angels do |t|
      t.string :name
      t.string :phone_number
      t.string :prefix

      t.timestamps
    end
  end
end
