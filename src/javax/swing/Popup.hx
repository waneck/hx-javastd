package javax.swing;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class Popup
{
	/**
	* Creates a <code>Popup</code> for the Component <code>owner</code>
	* containing the Component <code>contents</code>. <code>owner</code>
	* is used to determine which <code>Window</code> the new
	* <code>Popup</code> will parent the <code>Component</code> the
	* <code>Popup</code> creates to.
	* A null <code>owner</code> implies there is no valid parent.
	* <code>x</code> and
	* <code>y</code> specify the preferred initial location to place
	* the <code>Popup</code> at. Based on screen size, or other paramaters,
	* the <code>Popup</code> may not display at <code>x</code> and
	* <code>y</code>.
	*
	* @param owner    Component mouse coordinates are relative to, may be null
	* @param contents Contents of the Popup
	* @param x        Initial x screen coordinate
	* @param y        Initial y screen coordinate
	* @exception IllegalArgumentException if contents is null
	*/
	@:overload private function new(owner : java.awt.Component, contents : java.awt.Component, x : Int, y : Int) : Void;
	
	/**
	* Creates a <code>Popup</code>. This is provided for subclasses.
	*/
	@:overload private function new() : Void;
	
	/**
	* Makes the <code>Popup</code> visible. If the <code>Popup</code> is
	* currently visible, this has no effect.
	*/
	@:overload public function show() : Void;
	
	/**
	* Hides and disposes of the <code>Popup</code>. Once a <code>Popup</code>
	* has been disposed you should no longer invoke methods on it. A
	* <code>dispose</code>d <code>Popup</code> may be reclaimed and later used
	* based on the <code>PopupFactory</code>. As such, if you invoke methods
	* on a <code>disposed</code> <code>Popup</code>, indeterminate
	* behavior will result.
	*/
	@:overload public function hide() : Void;
	
	
}
/**
* Component used to house window.
*/
@:native('javax$swing$Popup$HeavyWeightWindow') @:internal extern class Popup_HeavyWeightWindow extends javax.swing.JWindow implements sun.awt.ModalExclude
{
	@:overload override public function update(g : java.awt.Graphics) : Void;
	
	@:overload override public function show() : Void;
	
	
}
/**
* Used if no valid Window ancestor of the supplied owner is found.
* <p>
* PopupFactory uses this as a way to know when the Popup shouldn't
* be cached based on the Window.
*/
@:native('javax$swing$Popup$DefaultFrame') @:internal extern class Popup_DefaultFrame extends java.awt.Frame
{
	
}
