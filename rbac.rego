package opa.examples

import rego.v1

import input.input.user

allow if user == "admin"
