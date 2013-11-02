class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :dayslot
      t.integer :dayhalf
      t.integer :timeslot
      t.belongs_to :user
      t.belongs_to :event

      t.timestamps
    end
  end
end
