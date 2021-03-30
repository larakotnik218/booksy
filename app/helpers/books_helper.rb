module BooksHelper

  def genre(genre)
     if genre == "Romance"
       content_tag :span, "#{genre}", class: "tag is-danger"
     elsif genre == "Drama"
       content_tag :span, "#{genre}", class: "tag is-success"
     elsif genre == "Horror"
       content_tag :span, "#{genre}", class: "tag is-black"
     elsif genre == "Crime"
       content_tag :span, "#{genre}", class: "tag is-info"
     elsif genre == "Action"
       content_tag :span, "#{genre}", class: "tag is-link"
     elsif genre == "Fantasy"
       content_tag :span, "#{genre}", class: "tag is-primary"
     elsif genre == "Kids"
       content_tag :span, "#{genre}", class: "tag is-warning"
     elsif genre == "Biography"
       content_tag :span, "#{genre}", class: "tag is-dark"
     else
       ""
     end
   end
  def user_id(book)
     user_signed_in? && current_user.id == book.user_id
  end
end
