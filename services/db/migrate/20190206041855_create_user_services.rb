class CreateUserServices < ActiveRecord::Migration[5.2]
  def change
    create_table :user_services do |t|
      t.integer :service_id
      t.integer :user_id
    end
  end
end
