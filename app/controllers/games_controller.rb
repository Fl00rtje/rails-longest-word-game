class GamesController < ApplicationController
  def new
    @letters = generate_random_letter
    # New random grid.
    # New form. The form will be submitted (with POST) to the score action.
  end

  def score
  end

  private

  def generate_random_letter
    letters = ('a'..'z').to_a
    # create an empty array to push your letters in
    picked_letters = []
    # use sample to pick a letter from the array
    8.times do
      picked_letters << letters.sample
    end
    picked_letters
  end

end

