VALID_CHOICES = %w(rock paper scissors lizard spock)

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Choose one: (r)ock, (p)aper, (sc)issors, (l)izard, (sp)ock")

player_choice = Kernel.gets().chomp()

p VALID_CHOICES.select { |x| x.start_with?(player_choice) }

=begin
if VALID_CHOICES.include?(start_with?(player_choice))
  break
else
  prompt("Not a valid choice.")
end
=end