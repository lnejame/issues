class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :issue_id
      t.string :subject
      t.string :category_id
      t.text :description

      t.timestamps
    end
  end
end
