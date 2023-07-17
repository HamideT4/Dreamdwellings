# README

This project is for an real estate website. Agencies can add ads to their page
and individuals can directly contact them about their properties.

## Requirements

* Ruby 3.1.1

* Rails 7.0.6

## Get and run the project localy

* Download the project (HTTP or SSH) :
  * Using HTTP : ```git clone https://github.com/HamideT4/Dreamdwellings.git``
  * Using SSH : ```git clone git@github.com:HamideT4/Dreamdwellings.git```

* Navigate to the root directory : ```cd Dreamdwellings```

* Install dependencies (gems) : ```bundle install```

* Create the database : ```rails db:create``` or ```rake db:create```

* Checkout the migrations status (up/down) : ```rails db:migrate:status```

* Make the migrations : ```rails db:migrate```

* Checkout again the migration status (up/down) : ```rails db:migrate:status```

* Run the server : ```rails server``` or ```rails s``` (or ```rs``` if alias rs is created)

* Open [http://127.0.0.1:3000](http://127.0.0.1:3000) or [http://[::1]:3000](http://[::1]:3000) in the broswer

