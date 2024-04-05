class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # has_paper_trail
  has_paper_trail versions: { class_name: 'Version' }
end
