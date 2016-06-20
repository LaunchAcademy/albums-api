albums = [
  { artist: 'Aphex Twin', title: 'Syro', year: 2014, image: '/images/syro.png' },
  { artist: 'Big Star', title: '#1 Record/Radio City', year: 1974, image: '/number-one-record.jpg' },
  { artist: 'Chrome Sparks', title: 'Wait for Heartbeats', year: 2010, image: '/images/wait-for-heartbeats.jpg' },
  { artist: 'Future Islands', title: 'In Evening Air', year: 2010, image: '/images/in-evening-air.jpg' },
  { artist: 'Glitch Mob', title: 'Love Death Immortality', year: 2014, image: '/images/love-death-immortality.jpg' },
  { artist: 'Nine Inch Nails', title: 'Pretty Hate Machine', year: 1989, image: '/images/pretty-hate-machine.jpg' },
  { artist: 'Tycho', title: 'Dive', year: 2011, image: '/images/dive.jpg' }
]

albums.each do |album_params|
  album = Album.find_or_initialize_by(artist: album_params[:artist], title: album_params[:title])
  album.update_attributes!(album_params)
end
