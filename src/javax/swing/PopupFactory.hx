package javax.swing;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class PopupFactory
{
	/**
	* Sets the <code>PopupFactory</code> that will be used to obtain
	* <code>Popup</code>s.
	* This will throw an <code>IllegalArgumentException</code> if
	* <code>factory</code> is null.
	*
	* @param factory Shared PopupFactory
	* @exception IllegalArgumentException if <code>factory</code> is null
	* @see #getPopup
	*/
	@:overload public static function setSharedInstance(factory : javax.swing.PopupFactory) : Void;
	
	/**
	* Returns the shared <code>PopupFactory</code> which can be used
	* to obtain <code>Popup</code>s.
	*
	* @return Shared PopupFactory
	*/
	@:overload public static function getSharedInstance() : javax.swing.PopupFactory;
	
	/**
	* Creates a <code>Popup</code> for the Component <code>owner</code>
	* containing the Component <code>contents</code>. <code>owner</code>
	* is used to determine which <code>Window</code> the new
	* <code>Popup</code> will parent the <code>Component</code> the
	* <code>Popup</code> creates to. A null <code>owner</code> implies there
	* is no valid parent. <code>x</code> and
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
	* @return Popup containing Contents
	*/
	@:overload public function getPopup(owner : java.awt.Component, contents : java.awt.Component, x : Int, y : Int) : javax.swing.Popup;
	
	
}
/**
* Popup implementation that uses a Window as the popup.
*/
@:native('javax$swing$PopupFactory$HeavyWeightPopup') @:internal extern class PopupFactory_HeavyWeightPopup extends javax.swing.Popup
{
	@:overload public function hide() : Void;
	
	
}
/**
* ContainerPopup consolidates the common code used in the light/medium
* weight implementations of <code>Popup</code>.
*/
@:native('javax$swing$PopupFactory$ContainerPopup') @:internal extern class PopupFactory_ContainerPopup extends javax.swing.Popup
{
	@:overload public function hide() : Void;
	
	@:overload public function pack() : Void;
	
	
}
/**
* Popup implementation that is used in headless environment.
*/
@:native('javax$swing$PopupFactory$HeadlessPopup') @:internal extern class PopupFactory_HeadlessPopup extends javax.swing.PopupFactory.PopupFactory_ContainerPopup
{
	@:overload public function show() : Void;
	
	@:overload override public function hide() : Void;
	
	
}
/**
* Popup implementation that uses a JPanel as the popup.
*/
@:native('javax$swing$PopupFactory$LightWeightPopup') @:internal extern class PopupFactory_LightWeightPopup extends javax.swing.PopupFactory.PopupFactory_ContainerPopup
{
	@:overload override public function hide() : Void;
	
	@:overload public function show() : Void;
	
	
}
/**
* Popup implementation that uses a Panel as the popup.
*/
@:native('javax$swing$PopupFactory$MediumWeightPopup') @:internal extern class PopupFactory_MediumWeightPopup extends javax.swing.PopupFactory.PopupFactory_ContainerPopup
{
	@:overload override public function hide() : Void;
	
	@:overload public function show() : Void;
	
	
}
@:native('javax$swing$PopupFactory$MediumWeightPopup$MediumWeightComponent') @:internal extern class PopupFactory_MediumWeightPopup_MediumWeightComponent extends java.awt.Panel implements javax.swing.SwingHeavyWeight
{
	
}
