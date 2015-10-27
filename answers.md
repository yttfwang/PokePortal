# Q0: Why is this error being thrown?
It was missing a Pokemon controller.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The pokemon were seeded into the database with the command rake db:seed/rake db:setup. The home controller grabs all the Pokemon that do not belong to trainers yet, and if a trainer is logged in and there exists a Pokemon that does not have a trainer, one of those Pokemon is displayed for capturing. The common factor between all possible Pokemon is that they do not have a trainer yet.
# Question 2a: What does the following line in the help text do? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
The line displays a button on the homepage to capture the trainerless pokemon. capture_path(id: @pokemon) directs the user to the capture method in the pokemon controller and passes in the pokemon's id as a parameter. :method => :patch is whatever verb this route "does".
# Question 3: What would you name your own Pokemon?
LOL. I would name them after my friends, so if they were to visit my trainer's profile, they won't damage my Pokemon cuz my Pokemon are named after them.
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I redirected to "trainer_path(@pokemon.trainer_id)". It is a path, and it needed the id of the trainer whose profile I am visiting. To get that id, I simply found the trainer_id of the pokemon I was currently damaging. (Did it not need to be a path?)
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
I passed in whatever error that the the validation was throwing, and views/layouts/application.html.erb had a method that rendered into text the error message associated with that error.
# Give us feedback on the project and decal below!
It was funnnnn. Seemed very daunting at first because I was failing my homework (turned out the code I pulled wasn't compatible with the version of ruby I had previously installed). Really good spec. The instructions were clear and helped a lot.
# Extra credit: Link your Heroku deployed app
https://tiffanys-pokemon-app.herokuapp.com/
