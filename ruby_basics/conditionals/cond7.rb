status = ["awake", "tired"].sample
status_check =  if status == "awake"
                  "Be productive!"
                else
                   "Go to sleep!"
                end

puts status_check