class MP3Importer
    attr_accessor :path

    def initialize(file)
        @path = file
    end
    def files
        Dir.chdir(@path) do |path|
            Dir.glob("*.mp3")
        end
    end
    def import 
        newFiles = self.files
        newFiles.each do |filename|
            Song.new_by_filename(filename)
        end
    end
end