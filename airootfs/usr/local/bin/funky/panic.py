import os
import time

def trigger_alert():
    # FunkyOS Red Alert: Visual Panic
    print("🚨 RED ALERT: SYSTEM EVACUATION IN PROGRESS")
    
    # Cycle the border colors 10 times rapidly
    for _ in range(10):
        # Switch to Neon Red
        os.system("hyprctl keyword general:col.active_border rgba(ff0000ff)")
        os.system("hyprctl keyword decoration:shadow_offset 15 15")
        time.sleep(0.1)
        
        # Switch back to Black
        os.system("hyprctl keyword general:col.active_border rgba(000000ff)")
        os.system("hyprctl keyword decoration:shadow_offset 5 5")
        time.sleep(0.1)

if __name__ == "__main__":
    trigger_alert()
