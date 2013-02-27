package java.awt;
/*
* Copyright (c) 1995, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class CardLayout implements java.awt.LayoutManager2 implements java.io.Serializable
{
	/**
	* Creates a new card layout with gaps of size zero.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new card layout with the specified horizontal and
	* vertical gaps. The horizontal gaps are placed at the left and
	* right edges. The vertical gaps are placed at the top and bottom
	* edges.
	* @param     hgap   the horizontal gap.
	* @param     vgap   the vertical gap.
	*/
	@:overload public function new(hgap : Int, vgap : Int) : Void;
	
	/**
	* Gets the horizontal gap between components.
	* @return    the horizontal gap between components.
	* @see       java.awt.CardLayout#setHgap(int)
	* @see       java.awt.CardLayout#getVgap()
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function getHgap() : Int;
	
	/**
	* Sets the horizontal gap between components.
	* @param hgap the horizontal gap between components.
	* @see       java.awt.CardLayout#getHgap()
	* @see       java.awt.CardLayout#setVgap(int)
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function setHgap(hgap : Int) : Void;
	
	/**
	* Gets the vertical gap between components.
	* @return the vertical gap between components.
	* @see       java.awt.CardLayout#setVgap(int)
	* @see       java.awt.CardLayout#getHgap()
	*/
	@:overload public function getVgap() : Int;
	
	/**
	* Sets the vertical gap between components.
	* @param     vgap the vertical gap between components.
	* @see       java.awt.CardLayout#getVgap()
	* @see       java.awt.CardLayout#setHgap(int)
	* @since     JDK1.1
	*/
	@:require(java1) @:overload public function setVgap(vgap : Int) : Void;
	
	/**
	* Adds the specified component to this card layout's internal
	* table of names. The object specified by <code>constraints</code>
	* must be a string. The card layout stores this string as a key-value
	* pair that can be used for random access to a particular card.
	* By calling the <code>show</code> method, an application can
	* display the component with the specified name.
	* @param     comp          the component to be added.
	* @param     constraints   a tag that identifies a particular
	*                                        card in the layout.
	* @see       java.awt.CardLayout#show(java.awt.Container, java.lang.String)
	* @exception  IllegalArgumentException  if the constraint is not a string.
	*/
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* @deprecated   replaced by
	*      <code>addLayoutComponent(Component, Object)</code>.
	*/
	@:overload public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	/**
	* Removes the specified component from the layout.
	* If the card was visible on top, the next card underneath it is shown.
	* @param   comp   the component to be removed.
	* @see     java.awt.Container#remove(java.awt.Component)
	* @see     java.awt.Container#removeAll()
	*/
	@:overload public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	/**
	* Determines the preferred size of the container argument using
	* this card layout.
	* @param   parent the parent container in which to do the layout
	* @return  the preferred dimensions to lay out the subcomponents
	*                of the specified container
	* @see     java.awt.Container#getPreferredSize
	* @see     java.awt.CardLayout#minimumLayoutSize
	*/
	@:overload public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Calculates the minimum size for the specified panel.
	* @param     parent the parent container in which to do the layout
	* @return    the minimum dimensions required to lay out the
	*                subcomponents of the specified container
	* @see       java.awt.Container#doLayout
	* @see       java.awt.CardLayout#preferredLayoutSize
	*/
	@:overload public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the maximum dimensions for this layout given the components
	* in the specified target container.
	* @param target the component which needs to be laid out
	* @see Container
	* @see #minimumLayoutSize
	* @see #preferredLayoutSize
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentX(parent : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentY(parent : java.awt.Container) : Single;
	
	/**
	* Invalidates the layout, indicating that if the layout manager
	* has cached information it should be discarded.
	*/
	@:overload public function invalidateLayout(target : java.awt.Container) : Void;
	
	/**
	* Lays out the specified container using this card layout.
	* <p>
	* Each component in the <code>parent</code> container is reshaped
	* to be the size of the container, minus space for surrounding
	* insets, horizontal gaps, and vertical gaps.
	*
	* @param     parent the parent container in which to do the layout
	* @see       java.awt.Container#doLayout
	*/
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	/**
	* Flips to the first card of the container.
	* @param     parent   the parent container in which to do the layout
	* @see       java.awt.CardLayout#last
	*/
	@:overload public function first(parent : java.awt.Container) : Void;
	
	/**
	* Flips to the next card of the specified container. If the
	* currently visible card is the last one, this method flips to the
	* first card in the layout.
	* @param     parent   the parent container in which to do the layout
	* @see       java.awt.CardLayout#previous
	*/
	@:overload public function next(parent : java.awt.Container) : Void;
	
	/**
	* Flips to the previous card of the specified container. If the
	* currently visible card is the first one, this method flips to the
	* last card in the layout.
	* @param     parent   the parent container in which to do the layout
	* @see       java.awt.CardLayout#next
	*/
	@:overload public function previous(parent : java.awt.Container) : Void;
	
	/**
	* Flips to the last card of the container.
	* @param     parent   the parent container in which to do the layout
	* @see       java.awt.CardLayout#first
	*/
	@:overload public function last(parent : java.awt.Container) : Void;
	
	/**
	* Flips to the component that was added to this layout with the
	* specified <code>name</code>, using <code>addLayoutComponent</code>.
	* If no such component exists, then nothing happens.
	* @param     parent   the parent container in which to do the layout
	* @param     name     the component name
	* @see       java.awt.CardLayout#addLayoutComponent(java.awt.Component, java.lang.Object)
	*/
	@:overload public function show(parent : java.awt.Container, name : String) : Void;
	
	/**
	* Returns a string representation of the state of this card layout.
	* @return    a string representation of this card layout.
	*/
	@:overload public function toString() : String;
	
	
}
/*
* A pair of Component and String that represents its name.
*/
@:native('java$awt$CardLayout$Card') @:internal extern class CardLayout_Card implements java.io.Serializable
{
	public var name : String;
	
	public var comp : java.awt.Component;
	
	@:overload public function new(cardName : String, cardComponent : java.awt.Component) : Void;
	
	
}
