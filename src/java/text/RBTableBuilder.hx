package java.text;
/*
* Copyright (c) 1999, 2005, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
@:internal extern class RBTableBuilder
{
	/**
	* This class contains all the code to parse a RuleBasedCollator pattern
	* and build a RBCollationTables object from it.  A particular instance
	* of tis class exists only during the actual build process-- once an
	* RBCollationTables object has been built, the RBTableBuilder object
	* goes away.  This object carries all of the state which is only needed
	* during the build process, plus a "shadow" copy of all of the state
	* that will go into the tables object itself.  This object communicates
	* with RBCollationTables through a separate class, RBCollationTables.BuildAPI,
	* this is an inner class of RBCollationTables and provides a separate
	* private API for communication with RBTableBuilder.
	* This class isn't just an inner class of RBCollationTables itself because
	* of its large size.  For source-code readability, it seemed better for the
	* builder to have its own source file.
	*/
	@:overload @:public public function new(tables : java.text.RBCollationTables.RBCollationTables_BuildAPI) : Void;
	
	/**
	* Create a table-based collation object with the given rules.
	* This is the main function that actually builds the tables and
	* stores them back in the RBCollationTables object.  It is called
	* ONLY by the RBCollationTables constructor.
	* @see java.util.RuleBasedCollator#RuleBasedCollator
	* @exception ParseException If the rules format is incorrect.
	*/
	@:overload @:public public function build(pattern : String, decmp : Int) : Void;
	
	
}
