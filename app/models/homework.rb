# == Schema Information
#
# Table name: homeworks
#
#  id          :integer          not null, primary key
#  deadline    :time
#  assignment  :string
#  requirement :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Homework < ApplicationRecord
end
