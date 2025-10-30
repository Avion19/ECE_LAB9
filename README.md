# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## TEAM25 Avien Ramirez and Will Reisig

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary

In this lab, we learned how to use latches to save the memory of certain inputs to either be outputted later or rewritten, essentially sequential logic.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
Structural Verilog will error out the loop for the latch since it does not synthesize the loop with some sort of memory as it would have to be inferred. Behavioral Verilog does synthesize a latch with memory allowing a D-latch to work correctly.


### What is the meaning of always @(*) in a sensitivity block?
The always @(*) means to run/synthesize the next block of code whenever any input signal changes. So for any input in the module that changes, the following block of code will run unless specific inputs inside the parenthesis are specified.

### What importance is memory to digital circuits?
Memory allows us to store and retain values throughout the circuit. It allows us to refer back to data and not just do instantanous changes but sequential ones.  
