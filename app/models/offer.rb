class Offer < ActiveRecord::Base
  belongs_to :need
  belongs_to :user

  acts_as_commentable
end

