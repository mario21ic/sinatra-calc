require 'rake'
require 'rake/testtask'
 
task :default => [:test_units]
 
desc "Ejecutando los tests"
Rake::TestTask.new("test_units") { |t|
  t.pattern = 'test/*_test.rb'
  t.verbose = true
  t.warning = true
}

#task :coverage => [:coverage]
#desc "Ejecutando coverage"
#Rake::TestTask.new("coverage") { |t|
#  t.sh %{ pronto version }
#}
