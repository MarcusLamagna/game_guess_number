# Usando variáveis, strings, chamadas de método, condicionais e loops, criamos um jogo completo em Ruby.
# Jogo "Adivinhe meu número"
# Escrito por: MLamagna
# Primeiro requisito: Pedir que o jogador digite seu nome. Usar seu nome para imprimir uma saudação.
puts "Welcome to 'Ge My Number! ' "
print "What's your name? "
input = gets
#Armazenaremos o valors de retirni de "chomp em uma nova variável"
name = input.chomp
puts "Welcome, #{name}!"

#Armazenar um númeroaleatório para o jogador adivinhar
puts "I've got a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

#Manter o controle de quantas tentativas o jogador fez.
#Antes de cada tentativa, deixe-o saber quantas tentativas (de 10) ainda lhe restam
num_guesses = 0

#Monitorar se o jogador adivinhou corretamente
guessed_it = false

#O loop parará após 10 tentativas do jogador, ou quando este adivinhar corretamente, o que ocorrer primeiro
until num_guesses == 10 || guessed_it

#Solicitar que o jogador tente adivinhar o número alvo
puts "You've got #{10 - num_guesses} guesses left."
print "Make a guess: "
guess = gets.to_i

#Precisamos adicionar um à contagem de  tentativas a cada loop, para não cairmos em um loop infinito.
num_guesses += 1

#compara a tentativa ao alvo.
#Imprime a mensagem apropriada.
if guess < target
	puts "Oops. Your guess was LOW."
elsif guess > target
	puts "Oops. Your guess was HIGH."
elsif guess == target
	puts "Good job, #{name}!"
	puts "You guessed my number in #{num_guesses} guesses!"
	guessed_it = true
end
# Isso marca o fim do código que fará um loop
end

#Se o jogador ficar sem mais tentativas, dize-lhe qual era o número.
unless guessed_it
	puts "Sorry. You didn't get my number. (It was #{target}.)"
end