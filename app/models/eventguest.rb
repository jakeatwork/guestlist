# == Schema Information
#
# Table name: eventguests
#
#  id            :integer          not null, primary key
#  event_id      :integer
#  user_id       :integer
#  type_id       :integer
#  extras        :integer
#  attended      :boolean
#  created_at    :datetime
#  updated_at    :datetime
#  business_user :integer
#  notes         :text
#

class Eventguest < ActiveRecord::Base
	belongs_to :event
	belongs_to :user
	belongs_to :type
	resourcify

	def facebook
	    @facebook ||= Koala::Facebook::API.new(oauth_token)
	    block_given? ? yield(@facebook) : @facebook
	  rescue Koala::Facebook::APIError
	    logger.info e.to_s
	    nil
	  end

  def picture
    # @picture = facebook.get_picture("me")
    # @guest_photo = facebook.get_picture(@guest_name)
  end

	

end
