class Contact < ActiveRecord::Base
  scope :full_text_search, -> (query) {
    where("name @@ :q or address @@ :q", q: query)
  }

  def self.test_cron_job
    TestJob.perform_later
  end

end


