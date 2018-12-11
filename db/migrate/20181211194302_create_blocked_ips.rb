class CreateBlockedIps < ActiveRecord::Migration[5.2]
  def change
    create_table :blocked_ips do |t|
      t.string :ip

      t.timestamps
    end
  end
end
