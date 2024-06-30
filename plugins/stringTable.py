from annotation.annotation import annotation
from annotation.simple import DataBlock
from block.base import Block
from romInfo import RomInfo


@annotation
def string_table_pointers(memory, addr, *, amount):
    DataBlock(memory, addr, format="P", amount=int(amount))
    for n in range(int(amount)):
        ptr = memory.wordBE(addr + n * 2)
        if memory[ptr] is None:
            StringTable(memory, ptr, 0x16 if n < 0x11 else 0x17)
    RomInfo.macros["string_data"] = "PUSHC\nSETCHARMAP STRING_DATA\ndb \\#\nPOPC"
    RomInfo.charmap["STRING_DATA"] = {k: v for k, v in CHARS.items()}


class StringTable(Block):
    def __init__(self, memory, addr, target_bank):
        size = 2
        target = RomInfo.romBank(target_bank)
        self._target = target
        while memory.getLabel(addr + size) is None and addr + size < 0x7b70:
            size += 2
        for n in range(0, size, 2):
            ptr = memory.wordBE(addr + n)
            if target.getLabel(ptr) is None:
                target.addLabel(ptr, f"data_stringtable_{target_bank:02x}_{ptr:04x}")
            if target[ptr] is None and target.byte(ptr) != 0:
                StringData(target, ptr)
        super().__init__(memory, addr, size=size)
    
    def export(self, file):
        for n in range(0, len(self), 2):
            ptr = self.memory.wordBE(file.addr)
            file.asmLine(2, "data_P", str(self._target.getLabel(ptr)), is_data=True)

CHARS = {
    0x8F: "!",
    0x97: " ",
    0x9A: "'",
    0xD3: ".",
    0xD4: ",",
    0xD9: ":",
}
for c in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
    CHARS[ord(c)+40] = c

class StringData(Block):
    def __init__(self, memory, addr):
        size = 0
        while memory.byte(addr+size) != 0xFF:
            size += 1
        size += 1
        super().__init__(memory, addr, size=size)
    
    def export(self, file):
        data = []
        s = None
        done = 0
        for n in range(len(self)):
            c = self.memory.byte(file.addr + done)
            done += 1
            if c in CHARS:
                if s is None:
                    s = ""
                s += CHARS[c]
            else:
                if s is not None:
                    data.append(f"\"{s}\"")
                    s = None
                data.append(f"${c:02x}")
            if c in (0xFD, 0xFE) or done == 18 or self.memory.getLabel(file.addr + done):
                if s is not None:
                    data.append(f"\"{s}\"")
                    s = None
                if data:
                    file.asmLine(done, "string_data", *data, is_data=True)
                done = 0
                data = []
        if s is not None:
            data.append(f"\"{s}\"")
        if data:
            file.asmLine(done, "string_data", *data, is_data=True)