class Location < ActiveRecord::Base

  validates_presence_of :city, :email, :facebook_id, :name, :slug, :state, :timezone
  validates_numericality_of :lat, :lng
  validates_numericality_of :office_lat, :office_lng, :allow_nil => true

  scope :physical, where(:physical => true)

  # Returns closest campus, given lat/lng. If greater than 45 miles, returns Church Online
  # def self.nearest(lat, lng)
  #   locations = self.where(:active => true).where("slug != 'int'").within(45, :origin => [lat, lng]).order("distance ASC")
  #   return locations.empty? ? self.where(:slug => "int").first : locations.first
  # end



end
