class Artist
    attr_accessor :name, :genre

    @@all = []

    def initialize(name)
        @name = name
        @genre = genre
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        self.songs.last
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        Song.all.collect{|song| song.genre}
    end

end