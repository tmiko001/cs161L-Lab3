# Test Case Descriptions 

Add
test_case(32'h00000024, 32'hFFFFFFFF, 32'h0001, 1'b0, 32'h0001, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Or
test_case(32'h00000025, 32'hFFFFFFFF, 32'h0001, 1'b0, 32'hFFFFFFFF, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Add
test_case(32'h00000020, 32'hFFFFFFFF, 32'h0001, 1'b1, 32'h0000, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Subtract
test_case(32'h00000022, 32'hFFFFFFFF, 32'h0001, 1'b0, 32'hFFFFFFFE, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Set on less than
test_case(32'h0000002A, 32'hFFFFFFFF, 32'h0001, 1'b0, 32'h0001, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Nor
test_case(32'h00000027, 32'hFFFFFFFF, 32'h0001, 1'b1, 32'h0000, 1'b1, 1'b0, 1'b0, 1'b0, 2'b10, 1'b0, 1'b0, 1'b1);

Addi
test_case(32'h20000004, 32'hfffffffb, 32'h0004, 1'b0, 32'hffffffff, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00, 1'b0, 1'b1, 1'b1);

Lw
test_case(32'h8C000020, 32'h000000FF, 32'h0020, 1'b0, 32'h011F, 1'b0, 1'b0, 1'b1, 1'b1, 2'b00, 1'b0, 1'b1, 1'b1);

Sw
test_case(32'hAC000064, 32'h000000FF, 32'h0064, 1'b0, 32'h0163, 1'b0, 1'b0, 1'b0, 1'b0, 2'b00, 1'b1, 1'b1, 1'b0);

Beq
test_case(32'h10000025, 32'h000000FF, 32'h0025, 1'b0, 32'h00DA, 1'b0, 1'b1, 1'b0, 1'b0, 2'b01, 1'b0, 1'b0, 1'b0);

# Difference between add and addi
The add instruction is an R-type instruction so its opcode is 000000. Addi is its own instruction so it has its own opcode of 001000. Because add is an r type, it has a func part to describe it is an add. Addi is different because it uses the last chunk of bits for the immediate.
