from annotation.annotation import annotation
from annotation.simple import DataBlock, GfxImageBlock
from block.base import Block
from romInfo import RomInfo
import struct

@annotation
def mapPointers(memory, addr, *, amount: int):
    DataBlock(memory, addr, format="P", amount=int(amount))
    for n in range(int(amount)):
        ptr = memory.wordBE(addr + n * 2)
        if memory[ptr] is None:
            MapHeader(memory, ptr)
    RomInfo.macros["map_header"] = r"""
        db \1, \2, HIGH(\3), LOW(\3)
        db HIGH(BANK(\4)), LOW(BANK(\4))
        db HIGH(BANK(\5)), LOW(BANK(\5))
        db HIGH(BANK(\6)), LOW(BANK(\6))
        db HIGH(BANK(\7)), LOW(BANK(\7))
        db HIGH(BANK(\8)), LOW(BANK(\8))
        db HIGH(\4), LOW(\4)
        db HIGH(\5), LOW(\5)
        db HIGH(\6), LOW(\6)
        db HIGH(\7), LOW(\7)
        db HIGH(\8), LOW(\8)
        SHIFT 8
        db HIGH(\1), LOW(\1)
        db HIGH(\2), LOW(\2)
        db HIGH(\1 * 8), LOW(\1 * 8)
        db HIGH(\2 * 8), LOW(\2 * 8)
        SHIFT 2
        db HIGH(\1), LOW(\1)
        db HIGH(\2), LOW(\2)
        db \3
    """


class MapHeader(Block):
    def __init__(self, memory, addr):
        super().__init__(memory, addr, size=37)
        _, _, tilemap_bank, attrmap_bank, collisionmap_bank, gfx_bank, pal_bank, \
        tilemap_addr, attrmap_addr, collisionmap_addr, gfx_addr, pal_addr, \
        w, h, wpixels, hpixels, _, _, _ = struct.unpack(">HHHHHHHHHHHHHHHHHHB", memory.data(addr, 37))

        RomInfo.romBank(tilemap_bank).addLabel(tilemap_addr, f"tilemap_{tilemap_bank:02x}_{tilemap_addr:04x}")
        RomInfo.romBank(attrmap_bank).addLabel(attrmap_addr, f"attrmap_{attrmap_bank:02x}_{attrmap_addr:04x}")
        RomInfo.romBank(collisionmap_bank).addLabel(collisionmap_addr, f"collisionmap_{collisionmap_bank:02x}_{collisionmap_addr:04x}")
        RomInfo.romBank(gfx_bank).addLabel(gfx_addr, f"gfx_{gfx_bank:02x}_{gfx_addr:04x}")
        RomInfo.romBank(pal_bank).addLabel(pal_addr, f"pal_{pal_bank:02x}_{pal_addr:04x}")

        Tilemap(RomInfo.romBank(tilemap_bank), tilemap_addr, w, h)
        Tilemap(RomInfo.romBank(attrmap_bank), attrmap_addr, w, h)
        Tilemap(RomInfo.romBank(collisionmap_bank), collisionmap_addr, w, h)

        if RomInfo.romBank(gfx_bank)[gfx_addr] is None:
            GfxImageBlock(RomInfo.romBank(gfx_bank), gfx_addr, name=f"mapgfx_{gfx_bank:02x}_{gfx_addr:04x}_a", width=2, height=1)
            GfxImageBlock(RomInfo.romBank(gfx_bank), gfx_addr + 2 * 16, name=f"mapgfx_{gfx_bank:02x}_{gfx_addr:04x}_b", width=16, height=10)
    
    def export(self, file):
        unk0, unk1, unk2, tilemap_bank, attrmap_bank, collisionmap_bank, gfx_bank, pal_bank, \
        tilemap_addr, attrmap_addr, collisionmap_addr, gfx_addr, pal_addr, \
        w, h, wpixels, hpixels, unk3, unk4, unk5 = struct.unpack(">BBHHHHHHHHHHHHHHHHHB", self.memory.data(file.addr, 37))
        file.asmLine(37, "map_header", f"${unk0:02x}, ${unk1:02x}, ${unk2:04x}",
            f"{RomInfo.romBank(tilemap_bank).getLabel(tilemap_addr)}",
            f"{RomInfo.romBank(attrmap_bank).getLabel(attrmap_addr)}",
            f"{RomInfo.romBank(collisionmap_bank).getLabel(collisionmap_addr)}",
            f"{RomInfo.romBank(gfx_bank).getLabel(gfx_addr)}",
            f"{RomInfo.romBank(pal_bank).getLabel(pal_addr)}",
            f"{w}", f"{h}",
            f"${unk3:04x}, ${unk4:04x}, ${unk5:02x}",
            is_data=True, add_data_comment=False)


class Tilemap(Block):
    def __init__(self, memory, addr, w, h):
        if memory[addr]:
            return
        super().__init__(memory, addr, size=w*h)
        self._w = w
        self._h = h

    def export(self, file):
        for row in range(self._h):
            file.dataLine(self._w)
