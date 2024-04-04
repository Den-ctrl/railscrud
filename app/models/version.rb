class Version < PaperTrail::Version
  self.table_name = :versions

  validates :item_type, presence: true
  validates :item_id, presence: true
  validates :event, presence: true
end
