class Donation < ActiveRecord::Base
  FREQUENCY = %w(weekly biweekly monthly quarterly annually)
  belongs_to :charity
  belongs_to :user
end
