package sun.font;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
/*
* A tt font has a CMAP table which is in turn made up of sub-tables which
* describe the char to glyph mapping in (possibly) multiple ways.
* CMAP subtables are described by 3 values.
* 1. Platform ID (eg 3=Microsoft, which is the id we look for in JDK)
* 2. Encoding (eg 0=symbol, 1=unicode)
* 3. TrueType subtable format (how the char->glyph mapping for the encoding
* is stored in the subtable). See the TrueType spec. Format 4 is required
* by MS in fonts for windows. Its uses segmented mapping to delta values.
* Most typically we see are (3,1,4) :
* CMAP Platform ID=3 is what we use.
* Encodings that are used in practice by JDK on Solaris are
*  symbol (3,0)
*  unicode (3,1)
*  GBK (3,5) (note that solaris zh fonts report 3,4 but are really 3,5)
* The format for almost all subtables is 4. However the solaris (3,5)
* encodings are typically in format 2.
*/
@:internal extern class CMap
{
	public static var theNullCmap(default, null) : sun.font.CMap.CMap_NullCMapClass;
	
	
}
/* Format 4 Header is
* ushort format (off=0)
* ushort length (off=2)
* ushort language (off=4)
* ushort segCountX2 (off=6)
* ushort searchRange (off=8)
* ushort entrySelector (off=10)
* ushort rangeShift (off=12)
* ushort endCount[segCount] (off=14)
* ushort reservedPad
* ushort startCount[segCount]
* short idDelta[segCount]
* idRangeOFfset[segCount]
* ushort glyphIdArray[]
*/
@:native('sun$font$CMap$CMapFormat4') @:internal extern class CMap_CMapFormat4 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat0') @:internal extern class CMap_CMapFormat0 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat2') @:internal extern class CMap_CMapFormat2 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat6') @:internal extern class CMap_CMapFormat6 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat8') @:internal extern class CMap_CMapFormat8 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat10') @:internal extern class CMap_CMapFormat10 extends sun.font.CMap
{
	
}
@:native('sun$font$CMap$CMapFormat12') @:internal extern class CMap_CMapFormat12 extends sun.font.CMap
{
	
}
/* Used to substitute for bad Cmaps. */
@:native('sun$font$CMap$NullCMapClass') @:internal extern class CMap_NullCMapClass extends sun.font.CMap
{
	
}
