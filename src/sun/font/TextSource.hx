package sun.font;
/*
* Copyright (c) 1998, 2003, Oracle and/or its affiliates. All rights reserved.
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
*
* (C) Copyright IBM Corp. 1998-2003 - All Rights Reserved
*/
extern class TextSource
{
	/** Source character data. */
	@:overload @:public @:abstract public function getChars() : java.NativeArray<java.StdTypes.Char16>;
	
	/** Start of source data in char array returned from getChars. */
	@:overload @:public @:abstract public function getStart() : Int;
	
	/** Length of source data. */
	@:overload @:public @:abstract public function getLength() : Int;
	
	/** Start of context data in char array returned from getChars. */
	@:overload @:public @:abstract public function getContextStart() : Int;
	
	/** Length of context data. */
	@:overload @:public @:abstract public function getContextLength() : Int;
	
	/** Return the layout flags */
	@:overload @:public @:abstract public function getLayoutFlags() : Int;
	
	/** Bidi level of all the characters in context. */
	@:overload @:public @:abstract public function getBidiLevel() : Int;
	
	/** Font for source data. */
	@:overload @:public @:abstract public function getFont() : java.awt.Font;
	
	/** Font render context to use when measuring or rendering source data. */
	@:overload @:public @:abstract public function getFRC() : java.awt.font.FontRenderContext;
	
	/** Line metrics for source data. */
	@:overload @:public @:abstract public function getCoreMetrics() : sun.font.CoreMetrics;
	
	/** Get subrange of this TextSource. dir is one of the TextLineComponent constants */
	@:overload @:public @:abstract public function getSubSource(start : Int, length : Int, dir : Int) : sun.font.TextSource;
	
	/** Constant for toString(boolean).  Indicates that toString should not return info
	outside of the context of this instance. */
	@:public @:static @:final public static var WITHOUT_CONTEXT(default, null) : Bool;
	
	/** Constant for toString(boolean).  Indicates that toString should return info
	outside of the context of this instance. */
	@:public @:static @:final public static var WITH_CONTEXT(default, null) : Bool;
	
	/** Get debugging info about this TextSource instance. Default implementation just
	returns toString.  Subclasses should implement this to match the semantics of
	the toString constants. */
	@:overload @:public @:abstract public function toString(withContext : Bool) : String;
	
	
}
