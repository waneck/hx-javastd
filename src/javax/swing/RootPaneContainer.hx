package javax.swing;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface RootPaneContainer
{
	/**
	* Return this component's single JRootPane child.  A conventional
	* implementation of this interface will have all of the other
	* methods indirect through this one.  The rootPane has two
	* children: the glassPane and the layeredPane.
	*
	* @return this components single JRootPane child.
	* @see JRootPane
	*/
	@:overload public function getRootPane() : javax.swing.JRootPane;
	
	/**
	* The "contentPane" is the primary container for application
	* specific components.  Applications should add children to
	* the contentPane, set its layout manager, and so on.
	* <p>
	* The contentPane may not be null.
	* <p>
	* Generally implemented with
	* <code>getRootPane().setContentPane(contentPane);</code>
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the content pane parameter is null
	* @param contentPane the Container to use for the contents of this
	*        JRootPane
	* @see JRootPane#getContentPane
	* @see #getContentPane
	*/
	@:overload public function setContentPane(contentPane : java.awt.Container) : Void;
	
	/**
	* Returns the contentPane.
	*
	* @return the value of the contentPane property.
	* @see #setContentPane
	*/
	@:overload public function getContentPane() : java.awt.Container;
	
	/**
	* A Container that manages the contentPane and in some cases a menu bar.
	* The layeredPane can be used by descendants that want to add a child
	* to the RootPaneContainer that isn't layout managed.  For example
	* an internal dialog or a drag and drop effect component.
	* <p>
	* The layeredPane may not be null.
	* <p>
	* Generally implemented with<pre>
	*    getRootPane().setLayeredPane(layeredPane);</pre>
	*
	* @exception java.awt.IllegalComponentStateException (a runtime
	*            exception) if the layered pane parameter is null
	* @see #getLayeredPane
	* @see JRootPane#getLayeredPane
	*/
	@:overload public function setLayeredPane(layeredPane : javax.swing.JLayeredPane) : Void;
	
	/**
	* Returns the layeredPane.
	*
	* @return the value of the layeredPane property.
	* @see #setLayeredPane
	*/
	@:overload public function getLayeredPane() : javax.swing.JLayeredPane;
	
	/**
	* The glassPane is always the first child of the rootPane
	* and the rootPanes layout manager ensures that it's always
	* as big as the rootPane.  By default it's transparent and
	* not visible.  It can be used to temporarily grab all keyboard
	* and mouse input by adding listeners and then making it visible.
	* by default it's not visible.
	* <p>
	* The glassPane may not be null.
	* <p>
	* Generally implemented with
	* <code>getRootPane().setGlassPane(glassPane);</code>
	*
	* @see #getGlassPane
	* @see JRootPane#setGlassPane
	*/
	@:overload public function setGlassPane(glassPane : java.awt.Component) : Void;
	
	/**
	* Returns the glassPane.
	*
	* @return the value of the glassPane property.
	* @see #setGlassPane
	*/
	@:overload public function getGlassPane() : java.awt.Component;
	
	
}
