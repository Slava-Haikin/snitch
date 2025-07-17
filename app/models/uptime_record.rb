class UptimeRecord < ApplicationRecord
    belongs_to :site

    validates :available, inclusion: { in: [ true, false ] }
    validates :ping, presence: true, numericality: { only_integer: true }
end
