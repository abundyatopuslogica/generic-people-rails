class CreateCredentials < ActiveRecord::Migration
  def change
    create_table :credentials do |t|
      t.references :member, index: true
      t.references :email, index: true
      t.string :password, limit: 32
      t.string :provider, limit: 127, index: true
      t.string :uid, index: true, limit: 64

      t.timestamps
    end
  end
end
