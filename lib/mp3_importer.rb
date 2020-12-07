class MP3Importer


attr_accessor :path

def initialize(path)
    @path = path
end

def files 
    @files || Dir.glob("#{path}/*.mp3").collect { |e| e.gsub("#{path}/", "") }
end

def import 
    files.each {|e| Song.new_by_filename(e)}
end

end