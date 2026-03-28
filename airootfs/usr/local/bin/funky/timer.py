import os
import subprocess
import time

# Set the idle limit in seconds (300 seconds = 5 minutes)
IDLE_LIMIT = 300 

def get_idle_time():
    # Gets idle time from the system (specifically for X11/Wayland environments)
    try:
        output = subprocess.check_output("w -h | awk '{print $4}'", shell=True).decode()
        # This is a simplified check for the demo; in a real Ghost OS, 
        # we'd use 'xprintidle' or 'swayidle'
        return 0 
    except:
        return 0

if __name__ == "__main__":
    print("⏳ FunkyOS: Dead Man's Switch Active...")
    # For now, we'll keep it simple: 
    # If the 'Panic' flag is ever set to true, trigger evacuation.
    while True:
        # Placeholder for idle logic
        time.sleep(60) 
        # If we wanted to trigger it now for testing:
        # os.system("python3 /usr/local/bin/funky/panic.py")
