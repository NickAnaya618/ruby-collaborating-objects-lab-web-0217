class MP3Importer
  attr_reader :path

  @@all = []

  def initialize(file_path)
    @path = file_path
  end

  def files
    @files = Dir.entries(path).find_all do |file|
      file.end_with?("mp3")
    end
  end

  def import
    files.each do |file|
      Song.new_by_filename(file)
    end
  end
end
