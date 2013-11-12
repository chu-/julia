using HTTPClient.HTTPC

env_name = chomp(readall(`hostname`))
commit = Base.BUILD_INFO.commit
flavor = ENV["JULIA_FLAVOR"]
json = "{\"env\": \"$env_name\", \"blas\":\"$flavor\", \"commit\":\"$commit\"}"
post("http://julia-codespeed.csail.mit.edu:8000/put/codespeed", json ) 
