# language: en
# encoding: utf-8

Feature: Get CEP from Busca CEP Api
  Scenario: Successfully
    Given that I want to get an address with a valid zip code
    When I make a request in zip code the API
    Then I should see all address data 

  Scenario: Invalid Zip Code
    Given that I want to get an address with a invalid zip code
    When I make a request in zip code the API
    Then I should receive a request error
      
