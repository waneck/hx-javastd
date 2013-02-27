package javax.swing.plaf.multi;
/*
* Copyright (c) 1997, 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class MultiSplitPaneUI extends javax.swing.plaf.SplitPaneUI
{
	/**
	* The vector containing the real UIs.  This is populated
	* in the call to <code>createUI</code>, and can be obtained by calling
	* the <code>getUIs</code> method.  The first element is guaranteed to be the real UI
	* obtained from the default look and feel.
	*/
	private var uis : java.util.Vector<Dynamic>;
	
	/**
	* Returns the list of UIs associated with this multiplexing UI.  This
	* allows processing of the UIs by an application aware of multiplexing
	* UIs on components.
	*/
	@:overload public function getUIs() : java.NativeArray<javax.swing.plaf.ComponentUI>;
	
	/**
	* Invokes the <code>resetToPreferredSizes</code> method on each UI handled by this object.
	*/
	@:overload override public function resetToPreferredSizes(a : javax.swing.JSplitPane) : Void;
	
	/**
	* Invokes the <code>setDividerLocation</code> method on each UI handled by this object.
	*/
	@:overload override public function setDividerLocation(a : javax.swing.JSplitPane, b : Int) : Void;
	
	/**
	* Invokes the <code>getDividerLocation</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getDividerLocation(a : javax.swing.JSplitPane) : Int;
	
	/**
	* Invokes the <code>getMinimumDividerLocation</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getMinimumDividerLocation(a : javax.swing.JSplitPane) : Int;
	
	/**
	* Invokes the <code>getMaximumDividerLocation</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getMaximumDividerLocation(a : javax.swing.JSplitPane) : Int;
	
	/**
	* Invokes the <code>finishedPaintingChildren</code> method on each UI handled by this object.
	*/
	@:overload override public function finishedPaintingChildren(a : javax.swing.JSplitPane, b : java.awt.Graphics) : Void;
	
	/**
	* Invokes the <code>contains</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function contains(a : javax.swing.JComponent, b : Int, c : Int) : Bool;
	
	/**
	* Invokes the <code>update</code> method on each UI handled by this object.
	*/
	@:overload override public function update(a : java.awt.Graphics, b : javax.swing.JComponent) : Void;
	
	/**
	* Returns a multiplexing UI instance if any of the auxiliary
	* <code>LookAndFeel</code>s supports this UI.  Otherwise, just returns the
	* UI object obtained from the default <code>LookAndFeel</code>.
	*/
	@:native('createUI') @:overload public static function _createUI(a : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Invokes the <code>installUI</code> method on each UI handled by this object.
	*/
	@:overload override public function installUI(a : javax.swing.JComponent) : Void;
	
	/**
	* Invokes the <code>uninstallUI</code> method on each UI handled by this object.
	*/
	@:overload override public function uninstallUI(a : javax.swing.JComponent) : Void;
	
	/**
	* Invokes the <code>paint</code> method on each UI handled by this object.
	*/
	@:overload override public function paint(a : java.awt.Graphics, b : javax.swing.JComponent) : Void;
	
	/**
	* Invokes the <code>getPreferredSize</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getPreferredSize(a : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Invokes the <code>getMinimumSize</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getMinimumSize(a : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Invokes the <code>getMaximumSize</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getMaximumSize(a : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Invokes the <code>getAccessibleChildrenCount</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getAccessibleChildrenCount(a : javax.swing.JComponent) : Int;
	
	/**
	* Invokes the <code>getAccessibleChild</code> method on each UI handled by this object.
	*
	* @return the value obtained from the first UI, which is
	* the UI obtained from the default <code>LookAndFeel</code>
	*/
	@:overload override public function getAccessibleChild(a : javax.swing.JComponent, b : Int) : javax.accessibility.Accessible;
	
	
}
