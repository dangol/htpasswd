# Exporting execution part.
if PROGRAM_MODE
  # Parses and processes command line arguments.
  program = require './program'
  processor = require './processor'
  program.parse process.argv
  processor.process program
else
  # Exporting verify method.
  module.exports.verify = require('./utils').verify