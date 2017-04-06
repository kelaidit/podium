module BooksHelper
  
  def book_link book
   
  html = "<a href=/books/#{book.id}>".html_safe
  
  if book.category then
    html = html + "#{book.title}(#{book.category.title})" 
   else
    html = html + "#{book.title}" 
   end
  
  html = html+"</a>".html_safe
    
  end
end
