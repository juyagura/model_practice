class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.

    @most_recent_movie_for_second_actor = Actor.second.movies.order("year desc").first.title
  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.

    @director_of_longest_movie = Movie.order("duration desc").first.director.name
    @duration_of_longest_movie = Movie.order("duration desc").first.duration
  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.
    maximum_number_of_movies = 0
    director_id_with_most_movies = 0
    Director.all.each do |the_director|
      number_of_movies = the_director.movies.count
      if number_of_movies > maximum_number_of_movies
        maximum_number_of_movies = number_of_movies
        director_id_with_most_movies = the_director.id
      end
    end
    @director_with_the_most_movies = Director.find(director_id_with_most_movies).name
  end

  def question_4
    # Which actor has been in the most movies on the list?
    # (If there's a tie, any one of them is fine)

    # Your Ruby goes here.
    maximum_number_of_movies = 0
    actor_id_with_most_movies = 0
    Actor.all.each do |the_actor|
      number_of_movies = the_actor.movies.count
      if number_of_movies > maximum_number_of_movies
        maximum_number_of_movies = number_of_movies
        actor_id_with_most_movies = the_actor.id
      end
    end
    @actor_with_the_most_movies = Actor.find(actor_id_with_most_movies).name
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?
    # (If there's a tie, any pair of them is fine)

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
