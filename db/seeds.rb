json_file = File.read('songdata.json')
songs = JSON.parse(json_file)

songs.each do |track|
  Song.create(track)
end