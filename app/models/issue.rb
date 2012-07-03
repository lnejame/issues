class Issue < ActiveRecord::Base
  attr_accessible :category_id, :description, :issue_id, :subject
  belongs_to :category
end
