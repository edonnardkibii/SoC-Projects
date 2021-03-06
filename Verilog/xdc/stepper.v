module counter(clock, reset, led, servoPin, stepperPins);
 
/////////// 3 bit/LED counter ///////////////
localparam SECOND_DIVIDER = 50000000;
 
input clock, reset;
output [2:0] led;
reg [2:0] secondsCounter;
reg [31:0] clockCount1;
 
always @ (posedge clock)
begin
    if(secondsCounter == 3'b111 || reset == 0)
        secondsCounter <= 1'b0;
 
    clockCount1 = clockCount1 + 1'b1;
    if(clockCount1 == SECOND_DIVIDER)
        begin
            clockCount1 <= 1'b0;
            secondsCounter <= secondsCounter + 1'b1;
        end
end
 
assign led = ~secondsCounter;
 
/////////// RC Servo ///////////////
 
parameter TICK_CLOCK_DIVIDER = 195;  // 50000000/1000/256 = 195.31
 
output servoPin;
reg servoPin;
 
//Using the "ClkTick", we instantiate a 12-bits counter that increments at every tick.
//Each tick lasts 3.9µs, so 256 ticks lasts 1ms, and the 12 bits counter "TicksCount" rolls-over every 16ms.
//Just what we need to generate a new pulse regularly.
reg [31:0] clockCount2;
reg [11:0] ticksCount = 1'b0;
always @ (posedge clock)
begin
    if(clockCount2 == TICK_CLOCK_DIVIDER) // a "tick" has happened
        begin
            ticksCount <= ticksCount + 1'b1;
            clockCount2 <= 1'b0;
        end
    else
        clockCount2 <= clockCount2 + 1'b1;
end
 
// 4'b0001 out of 12 bits, already corresponds to 256 = 1ms pulse
// the remaining 8 bits will have a value from 0 to 255, for a total between (1ms, 2ms), exactly what a RC servo needs
always @ (posedge clock) servoPin <= (ticksCount < {4'b0001, secondsCounter, 5'b00000});
 
/////////// Stepper Motor - half step method (using 28BYJ-48) ///////////////
 
parameter STEPPER_DIVIDER = 50000; // every 1ms
 
output [3:0] stepperPins;
reg [3:0] stepperPins;
 
reg [31:0] clockCount3;
reg [2:0] step; // 8 positions for half steps
 
always @ (posedge clock)
begin
    if(clockCount3 >= STEPPER_DIVIDER * (secondsCounter + 1))
        begin
            step <= step + 1'b1;
            clockCount3 <= 1'b0;
        end
    else
        clockCount3 <= clockCount3 + 1'b1;
end
 
always @ (step)
begin
    case(step)
        0: stepperPins <= 4'b1000;
        1: stepperPins <= 4'b1100;
        2: stepperPins <= 4'b0100;
        3: stepperPins <= 4'b0110;
        4: stepperPins <= 4'b0010;
        5: stepperPins <= 4'b0011;
        6: stepperPins <= 4'b0001;
        7: stepperPins <= 4'b1001;
    endcase
end
 
endmodule