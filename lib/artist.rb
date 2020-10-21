class Artist
    attr_accessor :name, :song
    @@song_count = 0
    def initialize(name)
        @name = name
        
    end

    def self.all
        @@all
    end
    
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(song_name)
        singer = Song.new(song_name)
        add_song(singer)

    end

    def songs
        Song.all.select do |song| 
        song.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end
end
