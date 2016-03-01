if Author.all.blank?
  Author.create first_name: "JK", last_name: "Rolling"
  Author.create first_name: "George RR", last_name: "Martin"
end

if Book.all.blank?
  Book.create title: "Harry Potter and the Sorcerer's Stone", author_id: 1
  Book.create title: "Harry Potter and the Chamber of Secrets", author_id: 1
  Book.create title: "Game of Thrones", author_id: 2
end
