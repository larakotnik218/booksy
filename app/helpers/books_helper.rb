module BooksHelper

  def genre(genre)
     if genre == "Romance"
       content_tag :span, "#{genre}", class: "tag is-primary"
     elsif genre == "Drama"
       content_tag :span, "#{genre}", class: "tag is-link"
     elsif genre == "Horror"
       content_tag :span, "#{genre}", class: "tag is-warning"
     elsif genre == "Crime"
       content_tag :span, "#{genre}", class: "tag is-success"
     elsif genre == "Action"
       content_tag :span, "#{genre}", class: "tag is-secundary"
     elsif genre == "Fantasy"
       content_tag :span, "#{genre}", class: "tag is-danger"
     elsif genre == "Kids"
       content_tag :span, "#{genre}", class: "tag is-dark"
     elsif genre == "Biography"
       content_tag :span, "#{genre}", class: "tag is-light"
     else
       ""
     end
   end
  def user_id(book)
     user_signed_in? && current_user.id == book.user_id
  end
end
