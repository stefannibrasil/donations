class CreateDonationLocals < ActiveRecord::Migration[5.1]
  def change
    create_table :donation_locals do |t|
      t.string :donation_type
      t.string :street
      t.string :neighborhood
      t.string :state
      t.string :city
      t.string :name
      t.string :local_type
      t.string :site
      t.string :phone

      t.timestamps
    end
  end
end
