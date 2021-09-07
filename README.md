# farmily
<h3 align="center">
  <img src="app/assets/images/Screenshot 2021-09-07 at 10.16.56.png" width="800px">
</h3>

Farmily is an app that connects farmers/farm animal owners with users who want to rent a farm animal for work or fun.

## Versions
The following should be within the GEM file
```ruby
  # Ruby Version
  ruby '2.7.3'
  # Rails version
  'rails', '~> 6.1.4'
```

## System dependencies
```bash
  # Bundler
  brew install bundler
  # Node / npm
  brew install node
  # Yarn
  brew install yarn
```
## Installation
The following process is requried for installation.

```bash
  # Bundle
  bundle install

  # Yarn
  yarn install

  # Database and Migrations
  rails db:create

  rails db:migrate

  rails db:seed
```

## Run server
```bash
  rails s
```

## Features
The following features and APIs were used within cargo, an API key may be required.
* [Mapbox](https://www.mapbox.com/)
* [Algolia Places](https://community.algolia.com/places/)
* [Cloudinary](https://cloudinary.com/)
