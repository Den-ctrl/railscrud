class RecordVersion < PaperTrail::Version
  self.table_name = :versions

  validates :item_type, :item_id, :event, presence: true

end
