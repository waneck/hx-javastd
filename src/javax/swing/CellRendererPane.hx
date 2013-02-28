package javax.swing;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
* This class is inserted in between cell renderers and the components that
* use them.  It just exists to thwart the repaint() and invalidate() methods
* which would otherwise propagate up the tree when the renderer was configured.
* It's used by the implementations of JTable, JTree, and JList.  For example,
* here's how CellRendererPane is used in the code the paints each row
* in a JList:
* <pre>
*   cellRendererPane = new CellRendererPane();
*   ...
*   Component rendererComponent = renderer.getListCellRendererComponent();
*   renderer.configureListCellRenderer(dataModel.getElementAt(row), row);
*   cellRendererPane.paintComponent(g, rendererComponent, this, x, y, w, h);
* </pre>
* <p>
* A renderer component must override isShowing() and unconditionally return
* true to work correctly because the Swing paint does nothing for components
* with isShowing false.
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
*/
extern class CellRendererPane extends java.awt.Container implements javax.accessibility.Accessible
{
	/**
	* Construct a CellRendererPane object.
	*/
	@:overload public function new() : Void;
	
	/**
	* Overridden to avoid propagating a invalidate up the tree when the
	* cell renderer child is configured.
	*/
	@:overload override public function invalidate() : Void;
	
	/**
	* Shouldn't be called.
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* Shouldn't be called.
	*/
	@:overload override public function update(g : java.awt.Graphics) : Void;
	
	/**
	* If the specified component is already a child of this then we don't
	* bother doing anything - stacking order doesn't matter for cell
	* renderer components (CellRendererPane doesn't paint anyway).<
	*/
	@:overload override private function addImpl(x : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Paint a cell renderer component c on graphics object g.  Before the component
	* is drawn it's reparented to this (if that's necessary), it's bounds
	* are set to w,h and the graphics object is (effectively) translated to x,y.
	* If it's a JComponent, double buffering is temporarily turned off. After
	* the component is painted it's bounds are reset to -w, -h, 0, 0 so that, if
	* it's the last renderer component painted, it will not start consuming input.
	* The Container p is the component we're actually drawing on, typically it's
	* equal to this.getParent(). If shouldValidate is true the component c will be
	* validated before painted.
	*/
	@:overload public function paintComponent(g : java.awt.Graphics, c : java.awt.Component, p : java.awt.Container, x : Int, y : Int, w : Int, h : Int, shouldValidate : Bool) : Void;
	
	/**
	* Calls this.paintComponent(g, c, p, x, y, w, h, false).
	*/
	@:overload public function paintComponent(g : java.awt.Graphics, c : java.awt.Component, p : java.awt.Container, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Calls this.paintComponent() with the rectangles x,y,width,height fields.
	*/
	@:overload public function paintComponent(g : java.awt.Graphics, c : java.awt.Component, p : java.awt.Container, r : java.awt.Rectangle) : Void;
	
	private var accessibleContext : javax.accessibility.AccessibleContext;
	
	/**
	* Gets the AccessibleContext associated with this CellRendererPane.
	* For CellRendererPanes, the AccessibleContext takes the form of an
	* AccessibleCellRendererPane.
	* A new AccessibleCellRendererPane instance is created if necessary.
	*
	* @return an AccessibleCellRendererPane that serves as the
	*         AccessibleContext of this CellRendererPane
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>CellRendererPane</code> class.
*/
@:native('javax$swing$CellRendererPane$AccessibleCellRendererPane') extern class CellRendererPane_AccessibleCellRendererPane extends java.awt.Container.Container_AccessibleAWTContainer
{
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
