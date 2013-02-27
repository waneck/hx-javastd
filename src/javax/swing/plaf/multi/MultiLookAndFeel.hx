package javax.swing.plaf.multi;
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
* <p>A multiplexing look and feel that allows more than one UI
* to be associated with a component at the same time.
* The primary look and feel is called
* the <em>default</em> look and feel,
* and the other look and feels are called <em>auxiliary</em>.
* <p>
*
* For further information, see
* <a href="doc-files/multi_tsc.html" target="_top">Using the
* Multiplexing Look and Feel.</a>
*
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
* @see UIManager#addAuxiliaryLookAndFeel
* @see javax.swing.plaf.multi
*
* @author Willie Walker
*/
extern class MultiLookAndFeel extends javax.swing.LookAndFeel
{
	/**
	* Returns a string, suitable for use in menus,
	* that identifies this look and feel.
	*
	* @return a string such as "Multiplexing Look and Feel"
	*/
	@:overload override public function getName() : String;
	
	/**
	* Returns a string, suitable for use by applications/services,
	* that identifies this look and feel.
	*
	* @return "Multiplex"
	*/
	@:overload override public function getID() : String;
	
	/**
	* Returns a one-line description of this look and feel.
	*
	* @return a descriptive string such as "Allows multiple UI instances per component instance"
	*/
	@:overload override public function getDescription() : String;
	
	/**
	* Returns <code>false</code>;
	* this look and feel is not native to any platform.
	*
	* @return <code>false</code>
	*/
	@:overload override public function isNativeLookAndFeel() : Bool;
	
	/**
	* Returns <code>true</code>;
	* every platform permits this look and feel.
	*
	* @return <code>true</code>
	*/
	@:overload override public function isSupportedLookAndFeel() : Bool;
	
	/**
	* Creates, initializes, and returns
	* the look and feel specific defaults.
	* For this look and feel,
	* the defaults consist solely of
	* mappings of UI class IDs
	* (such as "ButtonUI")
	* to <code>ComponentUI</code> class names
	* (such as "javax.swing.plaf.multi.MultiButtonUI").
	*
	* @return an initialized <code>UIDefaults</code> object
	* @see javax.swing.JComponent#getUIClassID
	*/
	@:overload override public function getDefaults() : javax.swing.UIDefaults;
	
	/**
	* Creates the <code>ComponentUI</code> objects
	* required to present
	* the <code>target</code> component,
	* placing the objects in the <code>uis</code> vector and
	* returning the
	* <code>ComponentUI</code> object
	* that best represents the component's UI.
	* This method finds the <code>ComponentUI</code> objects
	* by invoking
	* <code>getDefaults().getUI(target)</code> on each
	* default and auxiliary look and feel currently in use.
	* The first UI object this method adds
	* to the <code>uis</code> vector
	* is for the default look and feel.
	* <p>
	* This method is invoked by the <code>createUI</code> method
	* of <code>MultiXxxxUI</code> classes.
	*
	* @param mui the <code>ComponentUI</code> object
	*            that represents the complete UI
	*            for the <code>target</code> component;
	*            this should be an instance
	*            of one of the <code>MultiXxxxUI</code> classes
	* @param uis a <code>Vector</code>;
	*            generally this is the <code>uis</code> field
	*            of the <code>mui</code> argument
	* @param target a component whose UI is represented by <code>mui</code>
	*
	* @return <code>mui</code> if the component has any auxiliary UI objects;
	*         otherwise, returns the UI object for the default look and feel
	*         or <code>null</code> if the default UI object couldn't be found
	*
	* @see javax.swing.UIManager#getAuxiliaryLookAndFeels
	* @see javax.swing.UIDefaults#getUI
	* @see MultiButtonUI#uis
	* @see MultiButtonUI#createUI
	*/
	@:overload public static function createUIs(mui : javax.swing.plaf.ComponentUI, uis : java.util.Vector<Dynamic>, target : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Creates an array,
	* populates it with UI objects from the passed-in vector,
	* and returns the array.
	* If <code>uis</code> is null,
	* this method returns an array with zero elements.
	* If <code>uis</code> is an empty vector,
	* this method returns <code>null</code>.
	* A run-time error occurs if any objects in the <code>uis</code> vector
	* are not of type <code>ComponentUI</code>.
	*
	* @param uis a vector containing <code>ComponentUI</code> objects
	* @return an array equivalent to the passed-in vector
	*
	*/
	@:overload private static function uisToArray(uis : java.util.Vector<Dynamic>) : java.NativeArray<javax.swing.plaf.ComponentUI>;
	
	
}
@:internal extern class MultiUIDefaults extends javax.swing.UIDefaults
{
	@:overload override private function getUIError(msg : String) : Void;
	
	
}
