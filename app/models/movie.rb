class Movie < ActiveRecord::Base
# Create
# create_with_title
# saves the title to the movie
# creates a new record in the database 

    def self.create_with_title(title)
        Movie.create(title: title)

    end

#  Read.first_movie returns the first item in the movies table
    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end
# .find_movie_with_id returns the movie with the corresponding id
    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    # def self.find_movie_with_attributes(title)
    #     Movie.find_by(title: "#{title}")
    # end

    # .find_movie_with_attributes returns the movie with the corresponding attributes
    # Can return a movie from the table based on its attributes with the .find_by method
    def self.find_movie_with_attributes(attributes)
        Movie.find_by(attributes)
    end

    # .find_movies_after_2002mreturns a list of movies released after 2002
    def self.find_movies_after_2002
        Movie.where("release_date > ?", 2002)
    end

    #  Update update_with_attributes updates with one movie
    def update_with_attributes(title)
        self.update(title)
    end

    def self.update_all_titles(title)
        Movie.update_all(title: title)
    end

    def self.delete_by_id(id)
         Movie.destroy_by(id: id)
    end

    def self.delete_all_movies
        Movie.delete_all
    end
end