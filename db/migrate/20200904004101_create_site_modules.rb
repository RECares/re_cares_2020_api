class CreateSiteModules < ActiveRecord::Migration[6.0]
  def change
    create_table :site_modules do |t|
      t.string :name

      t.timestamps
    end
  end
end
