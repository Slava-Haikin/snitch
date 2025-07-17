class Site < ApplicationRecord
    belongs_to :User

    has_many :uptime_records, dependent: :destroy
end
