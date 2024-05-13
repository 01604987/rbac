package opa.examples

import rego.v1

import input

default allow := false

allow if {
  action_allowed
}

action_allowed if {
  input.attributes.request.http.method == "GET"
  glob.match("/meta", ["/"], input.attributes.request.http.path) 
}
