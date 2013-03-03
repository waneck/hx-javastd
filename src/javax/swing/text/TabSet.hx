package javax.swing.text;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TabSet implements java.io.Serializable
{
	/**
	* Creates and returns an instance of TabSet. The array of Tabs
	* passed in must be sorted in ascending order.
	*/
	@:overload @:public public function new(tabs : java.NativeArray<javax.swing.text.TabStop>) : Void;
	
	/**
	* Returns the number of Tab instances the receiver contains.
	*/
	@:overload @:public public function getTabCount() : Int;
	
	/**
	* Returns the TabStop at index <code>index</code>. This will throw an
	* IllegalArgumentException if <code>index</code> is outside the range
	* of tabs.
	*/
	@:overload @:public public function getTab(index : Int) : javax.swing.text.TabStop;
	
	/**
	* Returns the Tab instance after <code>location</code>. This will
	* return null if there are no tabs after <code>location</code>.
	*/
	@:overload @:public public function getTabAfter(location : Single) : javax.swing.text.TabStop;
	
	/**
	* @return the index of the TabStop <code>tab</code>, or -1 if
	* <code>tab</code> is not contained in the receiver.
	*/
	@:overload @:public public function getTabIndex(tab : javax.swing.text.TabStop) : Int;
	
	/**
	* Returns the index of the Tab to be used after <code>location</code>.
	* This will return -1 if there are no tabs after <code>location</code>.
	*/
	@:overload @:public public function getTabIndexAfter(location : Single) : Int;
	
	/**
	* Indicates whether this <code>TabSet</code> is equal to another one.
	* @param o the <code>TabSet</code> instance which this instance
	*  should be compared to.
	* @return <code>true</code> if <code>o</code> is the instance of
	* <code>TabSet</code>, has the same number of <code>TabStop</code>s
	* and they are all equal, <code>false</code> otherwise.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Returns a hashcode for this set of TabStops.
	* @return  a hashcode value for this set of TabStops.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function hashCode() : Int;
	
	/**
	* Returns the string representation of the set of tabs.
	*/
	@:overload @:public public function toString() : String;
	
	
}
