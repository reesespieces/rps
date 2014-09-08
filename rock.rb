require 'sinatra'

compscore = 0
playerscore = 0

get "/rock" do
	x = ["Paper! Paper beats rock! I win!", "Scissors! Ah, you beat me! You win!", "Rock! Ah! We tied!"]
	
	a = x.shuffle[0]

	if a == x[0]
		compscore = compscore + 1
		compscore.to_s

	elsif a == x[1]
		playerscore = playerscore + 1
		playerscore.to_s

	else
		compscore = compscore
		playerscore = playerscore
	end

	return a

end

get '/paper' do
	y = ["Scissors! Scissors beats paper! I win!", "Rock! Ah, you beat me! You win!", "Paper! Ah! We tied!"]
	y.shuffle[0]
end

get '/scissors' do
	z = ["Rock! Rock beats scissors! I win!", "Paper! Ah, you beat me! You win!", "Scissors! Ah! We tied!"]
	z.shuffle[0]
end

get '/score' do
	d = ["Computer Score: " + compscore.to_s + " ", "
		Player Score: " + playerscore.to_s]
	return d

end