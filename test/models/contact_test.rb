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

require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
