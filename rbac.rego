package opa.examples

import rego.v1

import input.attributes.request.http

default allow := false

allow if {
  action_allowed
}

action_allowed if {
  http.method == "GET"
  glob.match("/meta", ["/"], http.path) 
}
