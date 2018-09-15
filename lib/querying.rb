def select_books_titles_and_years_in_first_series_order_by_year
  "select books.title, books.year
  from books join series on books.series_id = series.id
  where series.id = 1
  order by books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select characters.name, characters.motto
  from characters
  order by length(characters.motto) desc
  limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select characters.species, count(characters.species) as num
  from characters
  group by characters.species
  order by num desc
  limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select authors.name, subgenres.name
  from authors join series on authors.id = series.author_id
  join subgenres on subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "select series.title
  from series
  order by count(characters) from characters where characters.series_id = series.id
  limit 1 "
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
