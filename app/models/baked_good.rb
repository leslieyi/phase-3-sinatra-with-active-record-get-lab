class BakedGood < ActiveRecord::Base
  # add association macro here
  belongs_to :bakery 
  # scope :by_price, -> { order(price: :desc) }
  def self.by_price
    all.order(price: :desc)
  end

  def self.most_expensive
    all.order(price: :desc).first
  end
end
