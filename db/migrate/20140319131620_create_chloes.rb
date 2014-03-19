class CreateChloes < ActiveRecord::Migration
  def change
    create_table :chloes do |t|
      t.string :name

      t.timestamps
    end
  end
end
