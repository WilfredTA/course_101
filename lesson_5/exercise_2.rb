books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Order array of hashes based on year of publication, earliest to latest...
# desired return value: index 2, index 3, index 1, index 0

def pubsorter(book)
    book.sort do |pub1, pub2|
    pub1[:published] <=> pub2[:published]
    end
end

p pubsorter(books)

#After looking at the LS Solution, I realized that though my solution works, 
# it works by virtue of luck, as my reasoning for why it works was incorrect. 
# I had not noticed that the dates of publication were Strings. Luckily, they
# are only four characters in size, or I would have had to convert them to integers.
# Further, there was no need to explicitly call pub1 <=> pub2 since sort will naturally
# compare the first index to the second index and put the