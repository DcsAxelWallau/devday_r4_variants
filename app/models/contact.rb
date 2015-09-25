# == Schema Information
#
# Table name: contacts
#
#  id             :integer          not null, primary key
#  name           :string
#  street_address :string
#  zip            :string
#  email          :string
#  phone          :string
#  gender         :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Contact < ActiveRecord::Base


  def spy_image
    random_idx = %w(1 2 3).sample
    "spy_#{random_idx}.png"
  end

  def spy_title
    random_title = %w(Executive Super Call-me-James Mega Best-Ever Kick-Ass Superduper Outstanding Busting Ruling Legendary Bond-like Junior Assistant Chief).sample
    "#{random_title} Spy"
  end

end
