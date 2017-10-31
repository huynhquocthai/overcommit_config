# OvercommitConfig

## Installation

`gem install overcommit_config`

## Usage

Run `overcommit_config`

You do not need to run `overcommit --install` . This gem install hooks into current repository automatically.

After that, when your commit has any offense, a report with html format will be created in the root of application with name current_date-rubocop.html. A hook failing in this case does not prevent the commit since it has already noted.

**Note**
If the commit is valid(does not have any offense), the html report will not be created.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).