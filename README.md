# seven_segment_display
# Four-Digit Seven Segment Display Controller

## Aim

To design a four-digit seven-segment display controller using Verilog HDL.

## Description

This project uses clock division and multiplexing to control a four-digit seven-segment display. Each display is enabled one at a time at a high speed, creating the appearance that all digits are continuously illuminated.

## Inputs

- clk

## Outputs

- an[3:0] : Anode control signals
- ca[7:0] : Cathode segment outputs

## Features

- Clock Divider
- Time Multiplexing
- Four-Digit Display Control

## Software Used

- Xilinx Vivado

## File

- seven_segment_display.v
