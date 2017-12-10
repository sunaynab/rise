# == Schema Information
#
# Table name: incidents
#
#  id                   :integer          not null, primary key
#  category             :string
#  incident_description :text
#  location             :string
#  time_of_incident     :datetime
#  offender             :string
#  victim               :string
#  offender_description :text
#  victim_description   :text
#  confidential         :boolean
#  status               :string
#  evidence             :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Incident < ApplicationRecord
  validates :category, :incident_description, :location, :time_of_incident, 
  :offender, :victim, :offender_description, :victim_description, :confidential,
  :status, :evidence, presence: true
  
  
  
end
