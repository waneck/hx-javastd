package sun.swing;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
/**
* <b>WARNING:</b> This class is an implementation detail and is only
* public so that it can be used by two packages. You should NOT consider
* this public API.
* <p>
* <b>WARNING 2:</b> This is not a general purpose List implementation! It
* has a specific use and will not work correctly if you use it outside of
* its use.
* <p>
* A specialized ArrayList that caches its hashCode as well as overriding
* equals to avoid creating an Iterator. This class is useful in scenarios
* where the list won't change and you want to avoid the overhead of hashCode
* iterating through the elements invoking hashCode. This also assumes you'll
* only ever compare a BakedArrayList to another BakedArrayList.
*
* @author Scott Violet
*/
extern class BakedArrayList extends java.util.ArrayList<Dynamic>
{
	@:overload public function new(size : Int) : Void;
	
	@:overload public function new(data : java.util.List<Dynamic>) : Void;
	
	/**
	* Caches the hash code. It is assumed you won't modify the list, or that
	* if you do you'll call cacheHashCode again.
	*/
	@:overload public function cacheHashCode() : Void;
	
	@:overload override public function hashCode() : Int;
	
	@:overload override public function equals(o : Dynamic) : Bool;
	
	
}
