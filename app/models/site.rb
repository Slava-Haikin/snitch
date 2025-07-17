class Site < ApplicationRecord
    belongs_to :user

    has_many :uptime_records, dependent: :destroy

    validates :user_id, presence: true
    validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
end
