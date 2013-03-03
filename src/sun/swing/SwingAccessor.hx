package sun.swing;
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
extern class SwingAccessor
{
	/**
	* Set an accessor object for the javax.swing.text.JTextComponent class.
	*/
	@:overload @:public @:static public static function setJTextComponentAccessor(jtca : sun.swing.SwingAccessor.SwingAccessor_JTextComponentAccessor) : Void;
	
	/**
	* Retrieve the accessor object for the javax.swing.text.JTextComponent class.
	*/
	@:overload @:public @:static public static function getJTextComponentAccessor() : sun.swing.SwingAccessor.SwingAccessor_JTextComponentAccessor;
	
	
}
/**
* An accessor for the JTextComponent class.
* Note that we intentionally introduce the JTextComponentAccessor,
* and not the JComponentAccessor because the needed methods
* aren't override methods.
*/
@:native('sun$swing$SwingAccessor$JTextComponentAccessor') extern interface SwingAccessor_JTextComponentAccessor
{
	/**
	* Calculates a custom drop location for the text component,
	* representing where a drop at the given point should insert data.
	*/
	@:overload public function dropLocationForPoint(textComp : javax.swing.text.JTextComponent, p : java.awt.Point) : javax.swing.TransferHandler.TransferHandler_DropLocation;
	
	/**
	* Called to set or clear the drop location during a DnD operation.
	*/
	@:overload public function setDropLocation(textComp : javax.swing.text.JTextComponent, location : javax.swing.TransferHandler.TransferHandler_DropLocation, state : Dynamic, forDrop : Bool) : Dynamic;
	
	
}
