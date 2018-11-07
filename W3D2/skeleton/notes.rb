

new_play = Play.new({title: "Hello"}) #not yet in the DB, just creating the object

new_play.create # going in to the actual database
                # since it sees that new_play has no ID yet.. it will then create it!

#new_play now has an id and when you call create on it again, it will raise an error


#ORM = OBJECT RELATIONSHIP MAPPING #

data = [{id:1, name = "Shakespeare", yr:1800},
        {id:2, name = "Van Gogh", yr: 1200}]


data = [playwright1 = Playwright1.new(),
        playwright2 = Playwright2.new()]

playwright2.id = 1
