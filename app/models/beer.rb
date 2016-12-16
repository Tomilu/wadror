class Beer < ActiveRecord::Base
  belongs_to :brewery
  has_many :ratings

  def average_rating
    sum = 0
    ratings.each do |rating|
      sum += rating.score
    end
    ret = sum/ratings.count.to_f
    "#{ret}"
  end

end
