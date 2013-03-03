package sun.awt.X11;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Helper class to ease the work with the lists of atoms.
*/
@:internal extern class XAtomList
{
	/**
	* Creates empty list.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates instance of XAtomList and initializes it with
	* the contents pointer by <code>data</code>.
	* Uses default display to initialize atoms.
	*/
	@:overload @:public public function new(data : haxe.Int64, count : Int) : Void;
	
	/**
	* Creates instance of XAtomList and initializes it with
	* the arrays of atoms. Array can contain null atoms.
	*/
	@:overload @:public public function new(atoms : java.NativeArray<sun.awt.X11.XAtom>) : Void;
	
	/**
	* Returns contents of the list as array of atoms.
	*/
	@:overload @:public public function getAtoms() : java.NativeArray<sun.awt.X11.XAtom>;
	
	/**
	* Returns contents of the list as pointer to native data
	* The size of the native data is size of the list multiplied by
	* size of the Atom type on the platform. Caller is responsible for
	* freeing the data by Unsafe.freeMemory when it is no longer needed.
	*/
	@:overload @:public public function getAtomsData() : haxe.Int64;
	
	/**
	* Returns true if this list contains the atom <code>atom</code>
	*/
	@:overload @:public public function contains(atom : sun.awt.X11.XAtom) : Bool;
	
	/**
	* Add atom to the list. Does nothing if list already contains this atom.
	*/
	@:overload @:public public function add(atom : sun.awt.X11.XAtom) : Void;
	
	/**
	* Removes atom from the list. Does nothing if arrays doesn't conaint this atom.
	*/
	@:overload @:public public function remove(atom : sun.awt.X11.XAtom) : Void;
	
	/**
	* Returns size of the list
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Returns a subset of a list which is intersection of this set and set build by mapping <code>mask</code> in
	* <code>mapping</code>.
	*/
	@:overload @:public public function subset(mask : Int, mapping : java.util.Map<Null<Int>, sun.awt.X11.XAtom>) : sun.awt.X11.XAtomList;
	
	/**
	* Returns iterator for items.
	*/
	@:overload @:public public function iterator() : java.util.Iterator<sun.awt.X11.XAtom>;
	
	/**
	* Merges without duplicates all the atoms from another list
	*/
	@:overload @:public public function addAll(atoms : sun.awt.X11.XAtomList) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
