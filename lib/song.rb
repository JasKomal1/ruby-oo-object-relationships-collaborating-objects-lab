class Song 
    attr_accessor :name , :artist
    @@all = []
    def initialize(name) 
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def self.new_by_filename(new_by_filename)
       arr = filename.split(" - ")
       song = self.new 
       song.name = arr[0]
       song.artist = arr[1]
       song
    end

    def artist_name=(name)
       self.artist = Artist.find_or_create_by_name(name)
       artist.add_song(self)
    end


end