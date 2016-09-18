# == Schema Information
#
# Table name: uglyterms
#
#  id         :integer          not null, primary key
#  term       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Uglyterm < ActiveRecord::Base
end
