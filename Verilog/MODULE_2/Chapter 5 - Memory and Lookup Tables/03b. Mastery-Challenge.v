/*Extend the same old-data synchronous memory with q_valid.
rst clears q and q_valid; otherwise q_valid equals re sampled at that edge.
q loads the old stored word when re=1 and holds when re=0.
*/
