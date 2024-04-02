module PaperTrail
    class ScheduleTrail
        # Returns who creates the @schedule
        def creator
            # Return if there are no versions
            return if versions.blank?

            # Find the version where the event is "create"
            created_version = versions.find { |version| version.event == 'create' }

            # Return the creator if a created version exists
            return created_version&.whodunnit unless created_version.nil?

            # If no "create" version is found, return the first non-blank whodunnit
            versions.map(&:whodunnit).reject(&:blank?).first
        end
    end
end
  