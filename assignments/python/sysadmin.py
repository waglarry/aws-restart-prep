import os
import subprocess #this is more powerful as you can use multiple arguments and can be used to run any bash command

os.system("ls")
subprocess.run(["ls"])
subprocess.run(["ls", "-l"])
subprocess.run(["ls", "-l", "input.txt"])

command="uname"
commandArgument="-a"
print(f"Gathering system information with command: {command} {commandArgument}")
subprocess.run([command, commandArgument])

command="ps"
commandArgument="-x"
print(f'Gathering active process information with command: {command} {commandArgument}')
subprocess.run([command,commandArgument])