# Code For America - Developer Fellowship Technical Question

## Project Description
This program parses a comma separated dataset containing building code violations, and it calculates number of violations in each category, and the earliest and latest violation date for each category. The results are logged out to the console and exported to a new csv file `violations_by_category.csv`.

<a href="http://forever.codeforamerica.org/fellowship-2015-tech-interview/Violations-2012.csv" target="_blank">Download dataset</a> from Code for America.

## Contributors
Christine Feaster (@femmestem)

## Developer Documentation
This project is written using the Ruby standard library. 

### Requirements
 - <a href="http://git-scm.com/" target="_blank">Git</a>
 -  Ruby 2.2 (<a href="https://rvm.io/rvm/install" target="_blank">RVM</a> recommended for managing Ruby versions)

 To check your ruby version, run `$ ruby --version`. If your version is 2.2.0, then you’re good to go.

If not, download <a href="https://rvm.io/rvm/install" target="_blank">RVM</a> if not already installed, then run `$ rvm list` to see your installed ruby versions. If you have 2.2.0 installed, run `$ rvm use ruby-2.2.0`. Otherwise, install or update your ruby version with RVM.

1. Download or clone this repository from GitHub `$ git clone https://github.com/femmestem/building-code-violations.git building-code-violations`
2. Change directory into the project folder `$ cd building-code-violations`
3. To execute the script, run: `$ ruby application.rb`   
This will create a new csv file `violations_by_category.csv` in the project root directory that contains number of violations in each category, and the earliest and latest violation date for each category.


