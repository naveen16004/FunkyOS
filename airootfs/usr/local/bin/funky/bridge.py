import sys
import os
import subprocess

# Simple dictionary to map human-like commands to our Ghost OS scripts
COMMAND_MAP = {
    "stealth": "/usr/local/bin/funky/stealth.sh",
    "scout": "/usr/local/bin/funky/scout.sh",
    "vault": "/usr/local/bin/funky/mount_vault.sh",
    "eject": "/usr/local/bin/funky/actions.py" # We'll trigger self_destruct here
}

def execute_action(cmd_key):
    if cmd_key in COMMAND_MAP:
        print(f"🧠 FunkyAI: Executing {cmd_key.upper()}...")
        try:
            subprocess.run([COMMAND_MAP[cmd_key]], check=True)
        except Exception as e:
            print(f"❌ Error: {e}")
    else:
        print(f"❓ '{cmd_key}' is not a valid FunkyOS command.")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        execute_action(sys.argv[1].lower())
    else:
        print("FunkyOS Bridge Active. Awaiting command...")
