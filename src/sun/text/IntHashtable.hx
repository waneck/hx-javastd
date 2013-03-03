package sun.text;
/*
* Copyright (c) 1998, 2002, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996,1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996, 1997 - All Rights Reserved
*/
/** Simple internal class for doing hash mapping. Much, much faster than the
* standard Hashtable for integer to integer mappings,
* and doesn't require object creation.<br>
* If a key is not found, the defaultValue is returned.
* Note: the keys are limited to values above Integer.MIN_VALUE+1.<br>
*/
extern class IntHashtable
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(initialSize : Int) : Void;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function isEmpty() : Bool;
	
	@:overload @:public public function put(key : Int, value : Int) : Void;
	
	@:overload @:public public function get(key : Int) : Int;
	
	@:overload @:public public function remove(key : Int) : Void;
	
	@:overload @:public public function getDefaultValue() : Int;
	
	@:overload @:public public function setDefaultValue(newValue : Int) : Void;
	
	@:overload @:public public function equals(that : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function putInternal(key : Int, value : Int) : Void;
	
	
}
