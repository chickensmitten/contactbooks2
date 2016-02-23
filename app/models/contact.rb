class Contact < ActiveRecord::Base
  scope :full_text_search, -> (query) {
    where("name @@ :q or address @@ :q", q: query)
  }

end


