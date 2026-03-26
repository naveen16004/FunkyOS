#!/bin/bash
# FunkyOS Hardware Scout
echo "Scanning hardware..."
# Detect screen resolution
RES=$(xrandr | grep '*' | awk '{print $1}')
echo "System detected at $RES. Adjusting FunkyUI scaling..."
