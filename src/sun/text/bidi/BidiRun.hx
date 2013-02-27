package sun.text.bidi;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
/* Written by Simon Montagu, Matitiahu Allouche
* (ported from C code written by Markus W. Scherer)
*/
/**
* A BidiRun represents a sequence of characters at the same embedding level.
* The Bidi algorithm decomposes a piece of text into sequences of characters
* at the same embedding level, each such sequence is called a <quote>run</quote>.
*
* <p>A BidiRun represents such a run by storing its essential properties,
* but does not duplicate the characters which form the run.
*
* <p>The &quot;limit&quot; of the run is the position just after the
* last character, i.e., one more than that position.
*
* <p>This class has no public constructor, and its members cannot be
* modified by users.
*
* @see com.ibm.icu.text.Bidi
*/
extern class BidiRun
{
	/**
	* Get level of run
	*/
	@:overload public function getEmbeddingLevel() : java.StdTypes.Int8;
	
	
}
