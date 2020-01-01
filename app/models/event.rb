class Event < ApplicationRecord
    validates :artist, presence: true
    validates :price_low, presence: true, numericality: true
    validates :price_high, presence: true, numericality: true
    validates :event_date, presence: true
    has_many :tickets

    validate :event_date_not_from_past, :price_low_not_higher_than_price_high

    def event_date_not_from_past
        if event_date < Date.today
            errors.add('Event date', 'can not be date from the past.')
        end
    end

    def price_low_not_higher_than_price_high
        if price_low > price_high
            errors.add('Low price', 'has to be lower than high price.')
        end
    end


end
