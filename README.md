# orbit-generator

Generate a CSV of random community data using Ruby's excellent [Faker](https://github.com/faker-ruby/faker) gem.

This library is used to generate data for the [Orbit Model Templates](https://airtable.com/shrOH6UzOdzZICXnJ) set of Airtable templates.

## Usage

Clone this repo.

```
git clone git@github.com/orbit-love/orbit-generator.git
```

Install gems.

```
bundle install
```

Generate the CSV.

```
ruby index.rb
```

This will create a file called `members.csv` in the current directory. This file can then be uploaded to a spreadsheet or Airtable table.
