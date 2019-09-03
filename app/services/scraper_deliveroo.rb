require 'open-uri'
require 'nokogiri'

class ScraperDeliveroo
  def initialize(postcode, foodtype)
    @postcode = postcode
    @foodtype = foodtype
  end

  def call
    url = "https://deliveroo.co.uk/restaurants/london/haggerston?postcode=#{@postcode}&collection=#{@foodtype}"

    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    # # puts html_doc
    restaurants = {
      @foodtype.to_sym => []
    }

    html_doc.search('.HomeFeedUICard-45fe00a3d559fba5').map do |element|
      restaurants[@foodtype.to_sym] << Restaurant.create(name: element.search(".HomeFeedUICard-f7ccdc5e7b2c5059.HomeFeedUICard-a9d288756e60cf37").text.strip, food_type: FoodType.find_by_name(@foodtype), photo_url: "https://resizer.otstatic.com/v2/photos/large/25630082.jpg", link_url:  "https://deliveroo.co.uk/restaurants/london/haggerston?postcode=#{@postcode}&collection=#{@foodtype}", address: @postcode)
      # PUSH MOVIE INSTANCE INTO RESTAURANTS HASH WITHIN KEY THAT MATCHES FOOD TYPE
    end


  end
end
