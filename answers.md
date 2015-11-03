# Q0: Why is this error being thrown?
	The error is being thrown because there is no Pokemon model.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
	All the pokemon that appear are pokemons whose trainer_id is null.

# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
	It creates a button that sends a patch request to the capture_path route that routes to the pokemons#capture method which takes in the id of the pokemon.

# Question 3: What would you name your own Pokemon?
	Giraffie because I like giraffes.

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
	I passed in redirect_to trainer_path(id: current_trainer). The path needed the id of the current trainer.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
	This partial view displays error messages which is a temporary storage variable that occurs when there is a specific request.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
