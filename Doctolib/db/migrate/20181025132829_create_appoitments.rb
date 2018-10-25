class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.string :date
      t.timestamps
    end
  end
end
