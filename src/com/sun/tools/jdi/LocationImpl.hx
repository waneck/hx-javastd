package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class LocationImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.Location
{
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function compareTo(object : com.sun.jdi.Location) : Int;
	
	@:overload public function declaringType() : com.sun.jdi.ReferenceType;
	
	@:overload public function method() : com.sun.jdi.Method;
	
	@:overload public function codeIndex() : haxe.Int64;
	
	@:overload public function sourceName() : String;
	
	@:overload public function sourceName(stratumID : String) : String;
	
	@:overload public function sourcePath() : String;
	
	@:overload public function sourcePath(stratumID : String) : String;
	
	@:overload public function lineNumber() : Int;
	
	@:overload public function lineNumber(stratumID : String) : Int;
	
	@:overload override public function toString() : String;
	
	
}
