class Contact < ActiveRecord::Base
  acts_as_taggable_on :tags
  
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  def self.test_cron_job
    TestJob.perform_later
  end

end


