Feature: payment service mock

Background:
* def payments = {}
* def id = 0

Scenario: pathMatches('/payments') && methodIs('post')
    * def payment = request
    * def id = ~~(id + 1)
    * payment.id = id
    * payments[id] = payment
    * def response = payment 

Scenario: pathMatches('/payments')
    * def response = $payments.*

Scenario: pathMatches('/payments/{id}') && methodIs('put')
    * payments[pathParams.id] = request
    * def response = request

Scenario: pathMatches('/payments/{id}') && methodIs('delete')
    * karate.remove('payments', pathParams.id)

Scenario: pathMatches('/payments/{id}')
    * def response = payments[pathParams.id]

Scenario: pathMatches('/sample')
    * def response = read('/sample-response.json')

Scenario:
    * def responseStatus = 404