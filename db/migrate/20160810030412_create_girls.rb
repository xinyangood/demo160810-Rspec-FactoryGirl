class CreateGirls < ActiveRecord::Migration[5.0]
  def change
    create_table :girls do |t|

      t.timestamps
    end
  end
end
