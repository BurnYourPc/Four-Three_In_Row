# Four-Three_In_Row

Matlab implementation for two similar games. Two programs to play Four or Three in row. The implementations are based on MinMax Algorithm. 

In the Three in row implementation we add an improvent at the evaluation-heuristic function of each position in order to achieve aggressive playing (program plays to win and not just "not to lose"). In Triliza folder there is the corresponding implementation. Run Triliza.m file. You choose who starts the game. The squares are numbered as shown below:

1   4   7

2   5   8

3   6   9

So if you play '3' you put an 'O' in the corresponding square. 


The FourInRow implementation is basic and needs a lot of improvement. Better evaluation-heuristic algoriths are needed and a prunning algorithm has to be added (Alpha–Beta pruning Algorithm). However is able to win a bad player. In FourInRow folder run FourInRow.m file. You always play second and choose the column you want to add your 'O'. For example in position below,

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----|X|-----| |-----| |-----| |


if you choose '2' then you put an 'O' in the second column and you get the position below,

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----| |-----| |-----| |-----| |-----| |-----| |

| |-----|O|-----| |-----|X|-----| |-----| |-----| |
