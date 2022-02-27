class Song
    attr_accessor :name, :artist
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def self.new_by_filename(filename)
        newsong = filename.split(" - ")
        x = Song.new(newsong[1])
        x.artist_name=(newsong[0])
        x
    end
    def artist_name=(name)
        self.artist = Artist.find_or_create_by_name(name)
    end
end