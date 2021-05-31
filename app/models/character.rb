class Character
    attr_reader :name, :actor
    @@all = []

    def initialize(name, actor)
        @name = name
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        MovieCharacter.all.select {|mc|mc.character == self}.map { |mc| mc.movie }
    end

    def shows
        EpisodeCharacter.all.select {|ec|ec.character == self}.map{|ec|ec.episode}.map{|ep|ep.show}.uniq
    end

    def self.character_hash
        character_hash = {}
        Character.all.each do |character|
            character_hash[character.name] = {
                num_of_movies: character.movies.length, 
                num_of_shows: character.shows.length
            }
        end
        character_hash
    end

    def self.most_film_roles
        char_with_max_movie_roles = {}
        max_movie_roles = 0
        Character.all.each do |character| 
            if character.movies.length > max_movie_roles
                max_movie_roles = character.movies.length
                char_with_max_movie_roles = character
            end
        end
        char_with_max_movie_roles
    end

    def self.most_tv_roles
        char_with_max_show_roles = {}
        max_show_roles = 0
        Character.all.each do |character|
            if character.shows.length > max_show_roles
                max_show_roles = character.shows.length
                char_with_max_show_roles = character
            end
        end
        char_with_max_show_roles
    end

    # should return which character of film/television appears in the most films or tv shows
    def self.most_appearances
        most_appearances = 0
        character = {}
        if Character.most_film_roles.movies.length > most_appearances
            most_appearances = Character.most_film_roles.movies.length
            character = Character.most_film_roles
        elsif Character.most_tv_roles.shows.length > most_appearances
            most_appearances = Character.most_tv_roles.shows.length
            character = Character.most_tv_roles
        end
        character
    end
end