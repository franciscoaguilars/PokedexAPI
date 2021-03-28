# DigitalPokedexAPI

Simple API to fetch random pokemons!

## End points
```bash
/api/v1/pokemons     < ---- Get an array list of 10 random pokemons.
/api/v1/pokemons/:id < ---- Get an array of a single pokemon and it’s properties.
```
## Built with 

This project consists on two parts.


For the backend:
- Ruby on Rails 
- [PokeAPI](https://pokeapi.co/)
- RSpec (for testing)


For the front end, [you can find it here](https://github.com/franciscoaguilars/PokedexFront) :
- React
- React Bootstrap
- React Router


## Prerequisites
ruby 2.6.6
rails 5.2

```bash
rails db:create db:migrate (DB are not being used, created for later development.)
bundle install
rails s
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
