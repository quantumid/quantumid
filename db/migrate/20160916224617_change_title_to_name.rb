class ChangeTitleToName < ActiveRecord::Migration[5.0]
  def change
    change_table :videos do |t|
      t.rename :title, :name
    end
  end
end
