# Bwt

A gem to do simple bwt in strings. 

## Installation

Add this line to your application's Gemfile:

    gem 'bwt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bwt

## Usage

require(bwt)

Bwt.bwt("banana")  
"|banana~"  
=> "bnn|aa~a"  

| is used as starting tag   
and    
~ as ending tag   

