class Message < ApplicationRecord
    validate :is_ascii
    validates :text, presence: true
    
    def is_ascii 
        if not text.ascii_only?
            errors.add(:text, "ASCII only!")
        end
    end
end
