# Nokogiri XXE Demo

### Introduction

This script can be run using the `nokogiri_xxe.rb` script. 
It accepts a file location as a command line argument, and returns the parsed value of that file in console.

There are two example files in this folder; `request.xml` and `external.xml`.

- `bundle exec ruby ./nokogiri_xxe.rb request.xml` returns the contents in the XML without XXE.
- `bundle exec ruby nokogiri_xxe.rb external.xml` uses external entity expansion to list the contents of your `/etc/passwd` file.

### Setup

1. Clone this repository.
2. In the cloned folder, run `bundle install --path vendor/bundle` to install the required gems in the local folder.
3. Run either of the above `nokogiri_xxe.rb` commands to see the results.
