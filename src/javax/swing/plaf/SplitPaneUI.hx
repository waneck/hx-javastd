package javax.swing.plaf;
/*
* Copyright (c) 1997, 1998, Oracle and/or its affiliates. All rights reserved.
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
extern class SplitPaneUI extends javax.swing.plaf.ComponentUI
{
	/**
	* Messaged to relayout the JSplitPane based on the preferred size
	* of the children components.
	*/
	@:overload @:public @:abstract public function resetToPreferredSizes(jc : javax.swing.JSplitPane) : Void;
	
	/**
	* Sets the location of the divider to location.
	*/
	@:overload @:public @:abstract public function setDividerLocation(jc : javax.swing.JSplitPane, location : Int) : Void;
	
	/**
	* Returns the location of the divider.
	*/
	@:overload @:public @:abstract public function getDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Returns the minimum possible location of the divider.
	*/
	@:overload @:public @:abstract public function getMinimumDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Returns the maximum possible location of the divider.
	*/
	@:overload @:public @:abstract public function getMaximumDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Messaged after the JSplitPane the receiver is providing the look
	* and feel for paints its children.
	*/
	@:overload @:public @:abstract public function finishedPaintingChildren(jc : javax.swing.JSplitPane, g : java.awt.Graphics) : Void;
	
	
}
