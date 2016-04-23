class CreateEventSpeakers < ActiveRecord::Migration
  def change
    create_table :event_speakers do |t|
      t.integer :event_id
      t.integer :speaker_id
      t.timestamps null: false
    end

    add_index :event_speakers, :event_id
    add_index :event_speakers, :speaker_id
  end
end
