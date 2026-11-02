/*
Extend the same old-data synchronous memory with q_valid.
rst clears q and q_valid; otherwise q_valid equals re sampled at that edge.
q loads the old stored word when re=1 and holds when re=0.
Writes remain independent; memory is not reset. Output columns: q, q_valid
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/
