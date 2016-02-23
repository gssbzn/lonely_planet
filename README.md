# Lonely Planet
[![Build Status](https://travis-ci.org/gssbzn/lonely_planet.svg?branch=master)](https://travis-ci.org/gssbzn/lonely_planet)
[![Coverage Status](https://coveralls.io/repos/github/gssbzn/lonely_planet/badge.svg?branch=master)](https://coveralls.io/github/gssbzn/lonely_planet?branch=master)

A simple program to convert XML files with destinations information
to plain HTML pages.

## Requirements

Please consider having Ruby 2.3.0 on your system,
a `.ruby-version` file is provided in case you mange
your gems with [rbenv](https://github.com/rbenv/rbenv#installation)
or [rvm](http://rvm.io/rvm/install)

## Installation

Clone the repository and setup.

```sh
$ git clone https://github.com/gssbzn/lonely_planet.git
$ cd lonely_planet
$ ./bin/setup
```

## Usage

```sh
$ ./bin/lonely_planet render
```

### Command options

- Taxonomy file location, where to look for the taxonomy XML file

    ```sh
    ./bin/lonely_planet render -y /some/path/taxonomy.xml
    ```
- Destinations file location, where to look for the destinations XML file

    ```sh
    ./bin/lonely_planet render -d /some/path/destinations.xml
    ```
- Output folder, where the resulting HTML file will be written to

    ```sh
    ./bin/lonely_planet render -o /some/path/
    ```

These options can be combined as you see fit.

## Contributing

1. Fork it ( https://github.com/gssbzn/lonely_planet/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

MIT License. Copyright 2016 Gustavo Bazan. http://gustavobazan.com
