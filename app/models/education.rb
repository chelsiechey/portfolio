class Education < ApplicationRecord
    has_many :courses, dependent: :destroy
    after_initialize :set_defaults

    def set_defaults
        self.complete = false if self.complete.nil?
    end

end
