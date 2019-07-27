from minizinc import *

# Load n-Queens model from file
nqueens = Model("./nqueens.mzn") 
# Create an Instance of the n-Queens model for Gecode
instance = Instance(gecode, nqueens)
# Assign 6 to n
instance["n"] = 6
result = instance.solve()
# Output the array q
print(result["q"])
#Dingo ate your baby
