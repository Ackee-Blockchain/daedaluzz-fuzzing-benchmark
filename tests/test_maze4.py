from wake.testing import *
from wake.testing.fuzzing import *

from pytypes.generatedmazes.maze4_wake import Maze

def random_uint64() -> int:
    bits = random.randint(1, 64)
    return random.getrandbits(bits)


discovered = set()


class Maze4FuzzTest(FuzzTest):
    maze: Maze

    def pre_sequence(self) -> None:
        self.maze = Maze.deploy()


    @flow()
    def flow_move_north(self) -> None:
        with may_revert():
            tx = self.maze.moveNorth(*[random_uint64() for _ in range(8)])

    @flow()
    def flow_move_south(self) -> None:
        with may_revert():
            tx = self.maze.moveSouth(*[random_uint64() for _ in range(8)])

    @flow()
    def flow_move_east(self) -> None:
        with may_revert():
            tx = self.maze.moveEast(*[random_uint64() for _ in range(8)])

    @flow()
    def flow_move_west(self) -> None:
        with may_revert():
            tx = self.maze.moveWest(*[random_uint64() for _ in range(8)])

    @invariant(period=100)
    def invariant_found(self) -> None:
        discovered.update([i for i in range(1, 49) if self.maze.found(i)])
        print(discovered)
        #print("Found ", sum(self.maze.found(i) for i in range(1, 49)))



@chain.connect()
def test_maze4():
    try:
        test = Maze4FuzzTest().run(100, 1_000_000)
    finally:
        print("Discovered ", discovered)
