from annotation.annotation import annotation
from annotation.simple import DataBlock
from block.base import Block
from romInfo import RomInfo

@annotation
def scriptTable(memory, addr, *, amount: int):
    DataBlock(memory, addr, format="P", amount=int(amount))
    for n in range(int(amount)):
        ptr = memory.wordBE(addr + n * 2)
        if memory[ptr] is None:
            ScriptBlock(memory, ptr)
    


INSTR_SIZE = {
    0x00: 9,
    0x01: 6, # move/spawn NPC?
    0x02: 2, # Show message
    0x03: 2, # Destroy NPC?
    0x04: 6, # Scroll map?
    0x06: 3,
    0x07: 2,
    0x08: 5, # load map?
    0x0C: 2,
    0x0D: 3, # End of script?
    0x0E: 1,
    0x0F: 2,
    0x10: 5, # Scroll map? Walk?
    0x11: 6, # Set player position
    0x12: 2, # Delay?
    0x13: 2,
    0x14: 1,
    0x1A: 1,
    0x1B: 1,
    0x1C: 3,
    0x1D: 2,
    0x1E: 1,
    0x21: 2,
    0x22: 3,
}

class ScriptBlock(Block):
    def __init__(self, memory, addr):
        size = 0
        while memory.byte(addr+size) in INSTR_SIZE:
            size += INSTR_SIZE[memory.byte(addr+size)]
            if memory.byte(addr+size) == 0x0D:
                break
        super().__init__(memory, addr, size=size)
    
    def export(self, file):
        todo = len(self)
        while todo > 0:
            size = INSTR_SIZE[self.memory.byte(file.addr)]
            file.dataLine(size)
            todo -= size
