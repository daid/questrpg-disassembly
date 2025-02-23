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
    0x02: 2, # Show message [message index, specific for this script]
    0x03: 2, # Destroy NPC?
    0x04: 6, # Scroll map?
    0x05: 2,
    0x06: 3, # Screen flash [?] [?]
    0x07: 2,
    0x08: 5, # load map [mapnr 16bit] [show_player] [load_default_npcs]
    0x09: 2,
    0x0A: 3,
    0x0B: 2, # This can "call" one of two specific script functions or return from them, depending on the parameter.
    0x0C: 2, # SFX [sfx number]
    0x0D: 3, # End of script [?] [?]
    0x0E: 1, # Do nothing.
    0x0F: 2, # Show/Hide player [show=1,hide=0]
    0x10: 5, # Walk: [Pixels] [?] [direction?]
    0x11: 6, # Set player position [x 16bit] [y 16bit] [direction]
    0x12: 2, # Delay [frames]
    0x13: 2,
    0x14: 1,
    0x15: 2,
    0x16: 1, # Resets the game
    0x17: 6,
    0x18: 2,
    0x19: 2,
    0x1A: 1,
    0x1B: 1,
    0x1C: 3,
    0x1D: 2,
    0x1E: 1,
    0x1F: 1,
    0x20: 2,
    0x21: 2,
    0x22: 3,
    0x23: 1,
    0x24: 3,
    0x25: 2,
    #0x26: 0,
    #0x27: 0,
}

class ScriptBlock(Block):
    def __init__(self, memory, addr):
        size = 0
        done = False
        while memory.byte(addr+size) in INSTR_SIZE:
            size += INSTR_SIZE[memory.byte(addr+size)]
            if memory.byte(addr+size) == 0x0D or memory.byte(addr+size) == 0x16 or (memory.byte(addr+size) == 0x0B and memory.byte(addr+size) >= 0x02):
                size += INSTR_SIZE[memory.byte(addr+size)]
                done = True
                break
        if not done:
            print(f"Unknown script opcode: {memory.byte(addr+size):02x}")
        super().__init__(memory, addr, size=size)
    
    def export(self, file):
        todo = len(self)
        while todo > 0:
            size = INSTR_SIZE[self.memory.byte(file.addr)]
            file.dataLine(size)
            todo -= size
