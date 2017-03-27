require './app/models/person'

class Project < ActiveRecord::Base
  belongs_to :project_type
  belongs_to :donation_activity
end

class ProjectType < ActiveRecord::Base
  has_many :projects
end

class DonationActivity < ActiveRecord::Base
  has_many :projects
  has_many :people
  has_many :donation_platforms
end

class DonationPlatform < ActiveRecord::Base
  belongs_to :donation_activity
end
