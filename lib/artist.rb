class Artist
    attr_accessor :name 
    @@all = []

    def initialize(name)
        @name = name 
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def songs 
        Song.all.select {|song| song.artist == self}
    end 

    def new_song(title, genre)
        song = Song.new(title, self, genre)
    end 

    def genres 
        self.songs.collect {|song| song.genre}
    end 

end 
