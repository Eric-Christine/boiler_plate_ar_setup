
User.destroy_all
user1 = User.create(name: "Eric Christine", age: 22, mood: "happy")
user2 = User.create(name: "Marcos Lipic", age: 23, mood: "happy")

Song.destroy_all
song1 = Song.create(title: "What's My Age Again?", artist: "Blink-182", lyrics: "angsty")
song2 = Song.create(title: "Electric Feel", artist: "MGMT", lyrics: "romantic")
song3 = Song.create(title: "Be Above It", artist: "Tame Impala", lyrics: "motivated")
song4 = Song.create(title: "Going Native", artist: "Summer Salt", lyrics: "happy")
song5 = Song.create(title: "Yer Blues", artist: "The Beatles", lyrics: "sad")
song6 = Song.create(title: "Polly", artist: "Whitney", lyrics: "sad")


Playlist.destroy_all
Playlist.create(user: user1, song: song4, name: "road trip")

# Movie.destroy_all
# movie1 = Movie.create(title: "Madagascar", director: "Eric Darnell, Tom McGrath", mood: "happy"))
# movie2 = Movie.create(title: "Titanic", director: "James Cameron", mood: "sad"))
# movie3 = Movie.create(title: "Rocky", director: "John Avildsen", mood: "motivated"))
# movie4 = Movie.create(title: "La La Land", director: "Damien Chazelle", mood: "romantic"))
# movie5 = Movie.create(title: "Kill Bill", director: "Quentin Tarantino", mood: "angsty"))

