class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
  # include PublicUid::ModelConcern
end
