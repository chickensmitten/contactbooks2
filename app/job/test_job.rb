class TestJob < ActiveJob::Base
  # Set the Queue as Default
  queue_as :default

  def perform
    contact = Contact.first
    name = ["jolly", "whinny", "luky", "pagy", "hansy", "creepy"]
    address = ["sample mansion", "คฤหาสน์ ตัวอย่าง", "샘플 저택", "மாதிரி மாளிகையை", "サンプル邸宅"]
    contact.update_attributes(name: name.sample, address: address.sample)
    # Perform Job
  end
end