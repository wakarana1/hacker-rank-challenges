# FIND THE ELECTION WINNER
def electionWinner(votes)
  vote_hash = votes.sort.reverse.each_with_object(Hash.new(0)){ |candidate, hash| hash[candidate] += 1 }
  winner = vote_hash.key(vote_hash.values.max)
end
