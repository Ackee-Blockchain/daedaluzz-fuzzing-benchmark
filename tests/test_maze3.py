from wake.testing import *
from wake.testing.fuzzing import *

from pytypes.generatedmazes.maze3_wake import Maze


discovered = set()


class Maze3FuzzTest(FuzzTest):
    maze: Maze

    def pre_sequence(self) -> None:
        self.maze = Maze.deploy()


    @flow()
    def flow_move_north(self, p0: uint64, p1: uint64, p2: uint64, p3: uint64, p4: uint64, p5: uint64, p6: uint64, p7: uint64) -> None:
        with may_revert():
            tx = self.maze.moveNorth(p0, p1, p2, p3, p4, p5, p6, p7)

    @flow()
    def flow_move_south(self, p0: uint64, p1: uint64, p2: uint64, p3: uint64, p4: uint64, p5: uint64, p6: uint64, p7: uint64) -> None:
        with may_revert():
            tx = self.maze.moveSouth(p0, p1, p2, p3, p4, p5, p6, p7)

    @flow()
    def flow_move_east(self, p0: uint64, p1: uint64, p2: uint64, p3: uint64, p4: uint64, p5: uint64, p6: uint64, p7: uint64) -> None:
        with may_revert():
            tx = self.maze.moveEast(p0, p1, p2, p3, p4, p5, p6, p7)

    @flow()
    def flow_move_west(self, p0: uint64, p1: uint64, p2: uint64, p3: uint64, p4: uint64, p5: uint64, p6: uint64, p7: uint64) -> None:
        with may_revert():
            tx = self.maze.moveWest(p0, p1, p2, p3, p4, p5, p6, p7)

    @invariant(period=100)
    def invariant_found(self) -> None:
        discovered.update([i for i in range(1, 49) if self.maze.found(i)])
        print(discovered)
        #print("Found ", sum(self.maze.found(i) for i in range(1, 49)))



@chain.connect()
def test_maze3():
    try:
        test = Maze3FuzzTest().run(100, 1_000_000)
    finally:
        print("Discovered ", discovered)
