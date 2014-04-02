class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :description
      t.string :name
      t.integer :number
      t.integer :section_id
      t.timestamps

    end

    create_table :sections do |t|
      t.string :name
      t.integer :number
      t.integer :chapter_id
      t.timestamps
    end

    create_table :chapters do |t|
      t.string :name
      t.integer :number
      t.timestamps
    end
  end
end
