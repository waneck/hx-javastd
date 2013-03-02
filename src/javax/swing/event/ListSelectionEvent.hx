package javax.swing.event;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* An event that characterizes a change in selection. The change is limited to a
* a single inclusive interval. The selection of at least one index within the
* range will have changed. A decent {@code ListSelectionModel} implementation
* will keep the range as small as possible. {@code ListSelectionListeners} will
* generally query the source of the event for the new selected status of each
* potentially changed row.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @author Hans Muller
* @author Ray Ryan
* @see ListSelectionModel
*/
extern class ListSelectionEvent extends java.util.EventObject
{
	/**
	* Represents a change in selection status between {@code firstIndex} and
	* {@code lastIndex}, inclusive. {@code firstIndex} is less than or equal to
	* {@code lastIndex}. The selection of at least one index within the range will
	* have changed.
	*
	* @param firstIndex the first index in the range, &lt;= lastIndex
	* @param lastIndex the last index in the range, &gt;= firstIndex
	* @param isAdjusting whether or not this is one in a series of
	*        multiple events, where changes are still being made
	*/
	@:overload public function new(source : Dynamic, firstIndex : Int, lastIndex : Int, isAdjusting : Bool) : Void;
	
	/**
	* Returns the index of the first row whose selection may have changed.
	* {@code getFirstIndex() &lt;= getLastIndex()}
	*
	* @return the first row whose selection value may have changed,
	*         where zero is the first row
	*/
	@:overload public function getFirstIndex() : Int;
	
	/**
	* Returns the index of the last row whose selection may have changed.
	* {@code getLastIndex() &gt;= getFirstIndex()}
	*
	* @return the last row whose selection value may have changed,
	*         where zero is the first row
	*/
	@:overload public function getLastIndex() : Int;
	
	/**
	* Returns whether or not this is one in a series of multiple events,
	* where changes are still being made. See the documentation for
	* {@link javax.swing.ListSelectionModel#setValueIsAdjusting} for
	* more details on how this is used.
	*
	* @return {@code true} if this is one in a series of multiple events,
	*         where changes are still being made
	*/
	@:overload public function getValueIsAdjusting() : Bool;
	
	/**
	* Returns a {@code String} that displays and identifies this
	* object's properties.
	*
	* @return a String representation of this object
	*/
	@:overload public function toString() : String;
	
	
}
