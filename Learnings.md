# Learnings

* Try scaling display on 13 inch by keeping other applications fonts configuration same. 
* Troubleshoot sleep issues by pmset -g pr pmset -g assertions to find which application is using CAFFEINATE to prevent system idle sleep, like in my case google chrome ongoing download was preventing  mac sleep and thus hibernation
* try to isolate issue by booting in safe mode(hold shift when mac os powers on and release when logo appears), we can find is it due to mac os insternals or  non-Apple startup items, login items, or kernel extensions. 

