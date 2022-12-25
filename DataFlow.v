module sevensegdis (input [3:0] X, output [6:0] segments);
assign segments[0]=(X[3]&X[2]|X[3]&X[1]|X[2]&~X[1]&~X[0]|~X[3]&~X[2]&~X[1]&X[0]);
assign segments[1]=(X[3]&X[2]|X[3]&X[1]|X[2]&~X[1]&X[0]|X[2]&X[1]&~X[0]);
assign segments[2]=(X[3]&X[2]|X[3]&X[1]|~X[2]&X[1]&~X[0]);
assign segments[3]=(X[3]&X[2]|X[3]&X[1]|X[3]&X[0]|~X[2]&~X[1]&X[0]|X[2]&~X[1]&~X[0]|X[2]&X[1]&X[0]);
assign segments[4]=(X[0]|X[3]&X[2]|X[2]&~X[1]|X[3]&X[0]);
assign segments[5]=(X[3]&X[2]|X[3]&X[1]|X[1]&X[0]|~X[2]&X[1]|~X[3]&~X[2]&X[0]);
assign segments[6]=(X[3]&X[2]|X[3]&X[1]|X[2]&X[1]&X[0]|~X[3]&~X[2]&~X[1]);
endmodule
