package sun.security.util;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class ManifestDigester
{
	/**
	* This class is used to compute digests on sections of the Manifest.
	*/
	public static var MF_MAIN_ATTRS(default, null) : String;
	
	@:overload public function new(bytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function get(name : String, oldStyle : Bool) : sun.security.util.ManifestDigester.ManifestDigester_Entry;
	
	@:overload public function manifestDigest(md : java.security.MessageDigest) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
/** state returned by findSection */
@:native('sun$security$util$ManifestDigester$Position') @:internal extern class ManifestDigester_Position
{
	
}
@:native('sun$security$util$ManifestDigester$Entry') extern class ManifestDigester_Entry
{
	@:overload public function new(offset : Int, length : Int, lengthWithBlankLine : Int, rawBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload public function digest(md : java.security.MessageDigest) : java.NativeArray<java.StdTypes.Int8>;
	
	/** Netscape doesn't include the new line. Intel and JavaSoft do */
	@:overload public function digestWorkaround(md : java.security.MessageDigest) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
