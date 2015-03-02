# Name of the role should match the name of the file
 name "eps-dev"
#
# Run list function we mentioned earlier
 run_list(
     "recipe[apt]",
     #"recipe[lighttpd]",
     "recipe[mysql]",
     "recipe[php]"
 )
