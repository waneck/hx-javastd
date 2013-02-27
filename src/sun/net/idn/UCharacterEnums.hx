package sun.net.idn;
/*
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
/**
*******************************************************************************
* Copyright (C) 2004, International Business Machines Corporation and         *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
//// CHANGELOG
////      2005-05-19 Edward Wang
////          - copy this file from icu4jsrc_3_2/src/com/ibm/icu/lang/UCharacterEnums.java
////          - move from package com.ibm.icu.lang to package sun.net.idn
////
/**
* A container for the different 'enumerated types' used by UCharacter.
* @draft ICU 3.0
* @deprecated This is a draft API and might change in a future release of ICU.
*/
@:internal extern class UCharacterEnums
{
	
}
/**
* 'Enum' for the CharacterCategory constants.  These constants are
* compatible in name <b>but not in value</b> with those defined in
* <code>java.lang.Character</code>.
* @see UCharacterCategory
* @draft ICU 3.0
* @deprecated This is a draft API and might change in a future release of ICU.
*/
@:native('sun$net$idn$UCharacterEnums$ECharacterCategory') extern interface UCharacterEnums_ECharacterCategory
{
	
}
/**
* 'Enum' for the CharacterDirection constants.  There are two sets
* of names, those used in ICU, and those used in the JDK.  The
* JDK constants are compatible in name <b>but not in value</b>
* with those defined in <code>java.lang.Character</code>.
* @see UCharacterDirection
* @draft ICU 3.0
* @deprecated This is a draft API and might change in a future release of ICU.
*/
@:native('sun$net$idn$UCharacterEnums$ECharacterDirection') extern interface UCharacterEnums_ECharacterDirection
{
	
}
