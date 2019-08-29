songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play" 
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
  
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  answer = gets.strip
  index = answer.to_i
  if index > 0 && index <= songs.length then
    puts "Playing #{songs[index - 1]}"
  elsif songs.any?(answer) then
    puts "Playing #{answer}"
  else
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)

  while true do
    puts "Please enter a command:"
    resp = gets.strip
    case(resp)
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else
        puts "Sorry, that's not a valid input"
      end
  end

end