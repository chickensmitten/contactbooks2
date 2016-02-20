class ExampleJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default

  def perform(contact_id)
    Contact.create!
    # Perform Job
  end
end