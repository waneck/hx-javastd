package javax.swing;
/*
* Copyright (c) 2006, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class GroupLayout implements java.awt.LayoutManager2
{
	/**
	* Indicates the size from the component or gap should be used for a
	* particular range value.
	*
	* @see Group
	*/
	@:public @:static @:final public static var DEFAULT_SIZE(default, null) : Int;
	
	/**
	* Indicates the preferred size from the component or gap should
	* be used for a particular range value.
	*
	* @see Group
	*/
	@:public @:static @:final public static var PREFERRED_SIZE(default, null) : Int;
	
	/**
	* Creates a {@code GroupLayout} for the specified {@code Container}.
	*
	* @param host the {@code Container} the {@code GroupLayout} is
	*        the {@code LayoutManager} for
	* @throws IllegalArgumentException if host is {@code null}
	*/
	@:overload @:public public function new(host : java.awt.Container) : Void;
	
	/**
	* Sets whether component visiblity is considered when sizing and
	* positioning components. A value of {@code true} indicates that
	* non-visible components should not be treated as part of the
	* layout. A value of {@code false} indicates that components should be
	* positioned and sized regardless of visibility.
	* <p>
	* A value of {@code false} is useful when the visibility of components
	* is dynamically adjusted and you don't want surrounding components and
	* the sizing to change.
	* <p>
	* The specified value is used for components that do not have an
	* explicit visibility specified.
	* <p>
	* The default is {@code true}.
	*
	* @param honorsVisibility whether component visiblity is considered when
	*                         sizing and positioning components
	* @see #setHonorsVisibility(Component,Boolean)
	*/
	@:overload @:public public function setHonorsVisibility(honorsVisibility : Bool) : Void;
	
	/**
	* Returns whether component visiblity is considered when sizing and
	* positioning components.
	*
	* @return whether component visiblity is considered when sizing and
	*         positioning components
	*/
	@:overload @:public public function getHonorsVisibility() : Bool;
	
	/**
	* Sets whether the component's visiblity is considered for
	* sizing and positioning. A value of {@code Boolean.TRUE}
	* indicates that if {@code component} is not visible it should
	* not be treated as part of the layout. A value of {@code false}
	* indicates that {@code component} is positioned and sized
	* regardless of it's visibility.  A value of {@code null}
	* indicates the value specified by the single argument method {@code
	* setHonorsVisibility} should be used.
	* <p>
	* If {@code component} is not a child of the {@code Container} this
	* {@code GroupLayout} is managine, it will be added to the
	* {@code Container}.
	*
	* @param component the component
	* @param honorsVisibility whether {@code component}'s visiblity should be
	*              considered for sizing and positioning
	* @throws IllegalArgumentException if {@code component} is {@code null}
	* @see #setHonorsVisibility(Component,Boolean)
	*/
	@:overload @:public public function setHonorsVisibility(component : java.awt.Component, honorsVisibility : Null<Bool>) : Void;
	
	/**
	* Sets whether a gap between components should automatically be
	* created.  For example, if this is {@code true} and you add two
	* components to a {@code SequentialGroup} a gap between the
	* two components is automatically be created.  The default is
	* {@code false}.
	*
	* @param autoCreatePadding whether a gap between components is
	*        automatically created
	*/
	@:overload @:public public function setAutoCreateGaps(autoCreatePadding : Bool) : Void;
	
	/**
	* Returns {@code true} if gaps between components are automatically
	* created.
	*
	* @return {@code true} if gaps between components are automatically
	*         created
	*/
	@:overload @:public public function getAutoCreateGaps() : Bool;
	
	/**
	* Sets whether a gap between the container and components that
	* touch the border of the container should automatically be
	* created. The default is {@code false}.
	*
	* @param autoCreateContainerPadding whether a gap between the container and
	*        components that touch the border of the container should
	*        automatically be created
	*/
	@:overload @:public public function setAutoCreateContainerGaps(autoCreateContainerPadding : Bool) : Void;
	
	/**
	* Returns {@code true} if gaps between the container and components that
	* border the container are automatically created.
	*
	* @return {@code true} if gaps between the container and components that
	*         border the container are automatically created
	*/
	@:overload @:public public function getAutoCreateContainerGaps() : Bool;
	
	/**
	* Sets the {@code Group} that positions and sizes
	* components along the horizontal axis.
	*
	* @param group the {@code Group} that positions and sizes
	*        components along the horizontal axis
	* @throws IllegalArgumentException if group is {@code null}
	*/
	@:overload @:public public function setHorizontalGroup(group : javax.swing.GroupLayout.GroupLayout_Group) : Void;
	
	/**
	* Sets the {@code Group} that positions and sizes
	* components along the vertical axis.
	*
	* @param group the {@code Group} that positions and sizes
	*        components along the vertical axis
	* @throws IllegalArgumentException if group is {@code null}
	*/
	@:overload @:public public function setVerticalGroup(group : javax.swing.GroupLayout.GroupLayout_Group) : Void;
	
	/**
	* Creates and returns a {@code SequentialGroup}.
	*
	* @return a new {@code SequentialGroup}
	*/
	@:overload @:public public function createSequentialGroup() : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Creates and returns a {@code ParallelGroup} with an alignment of
	* {@code Alignment.LEADING}.  This is a cover method for the more
	* general {@code createParallelGroup(Alignment)} method.
	*
	* @return a new {@code ParallelGroup}
	* @see #createParallelGroup(Alignment)
	*/
	@:overload @:public public function createParallelGroup() : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Creates and returns a {@code ParallelGroup} with the specified
	* alignment.  This is a cover method for the more general {@code
	* createParallelGroup(Alignment,boolean)} method with {@code true}
	* supplied for the second argument.
	*
	* @param alignment the alignment for the elements of the group
	* @throws IllegalArgumentException if {@code alignment} is {@code null}
	* @return a new {@code ParallelGroup}
	* @see #createBaselineGroup
	* @see ParallelGroup
	*/
	@:overload @:public public function createParallelGroup(alignment : javax.swing.GroupLayout.GroupLayout_Alignment) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Creates and returns a {@code ParallelGroup} with the specified
	* alignment and resize behavior. The {@code
	* alignment} argument specifies how children elements are
	* positioned that do not fill the group. For example, if a {@code
	* ParallelGroup} with an alignment of {@code TRAILING} is given
	* 100 and a child only needs 50, the child is
	* positioned at the position 50 (with a component orientation of
	* left-to-right).
	* <p>
	* Baseline alignment is only useful when used along the vertical
	* axis. A {@code ParallelGroup} created with a baseline alignment
	* along the horizontal axis is treated as {@code LEADING}.
	* <p>
	* Refer to {@link GroupLayout.ParallelGroup ParallelGroup} for details on
	* the behavior of baseline groups.
	*
	* @param alignment the alignment for the elements of the group
	* @param resizable {@code true} if the group is resizable; if the group
	*        is not resizable the preferred size is used for the
	*        minimum and maximum size of the group
	* @throws IllegalArgumentException if {@code alignment} is {@code null}
	* @return a new {@code ParallelGroup}
	* @see #createBaselineGroup
	* @see GroupLayout.ParallelGroup
	*/
	@:overload @:public public function createParallelGroup(alignment : javax.swing.GroupLayout.GroupLayout_Alignment, resizable : Bool) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Creates and returns a {@code ParallelGroup} that aligns it's
	* elements along the baseline.
	*
	* @param resizable whether the group is resizable
	* @param anchorBaselineToTop whether the baseline is anchored to
	*        the top or bottom of the group
	* @see #createBaselineGroup
	* @see ParallelGroup
	*/
	@:overload @:public public function createBaselineGroup(resizable : Bool, anchorBaselineToTop : Bool) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Forces the specified components to have the same size
	* regardless of their preferred, minimum or maximum sizes. Components that
	* are linked are given the maximum of the preferred size of each of
	* the linked components. For example, if you link two components with
	* a preferred width of 10 and 20, both components are given a width of 20.
	* <p>
	* This can be used multiple times to force any number of
	* components to share the same size.
	* <p>
	* Linked Components are not be resizable.
	*
	* @param components the {@code Component}s that are to have the same size
	* @throws IllegalArgumentException if {@code components} is
	*         {@code null}, or contains {@code null}
	* @see #linkSize(int,Component[])
	*/
	@:overload @:public public function linkSize(components : java.NativeArray<java.awt.Component>) : Void;
	
	/**
	* Forces the specified components to have the same size along the
	* specified axis regardless of their preferred, minimum or
	* maximum sizes. Components that are linked are given the maximum
	* of the preferred size of each of the linked components. For
	* example, if you link two components along the horizontal axis
	* and the preferred width is 10 and 20, both components are given
	* a width of 20.
	* <p>
	* This can be used multiple times to force any number of
	* components to share the same size.
	* <p>
	* Linked {@code Component}s are not be resizable.
	*
	* @param components the {@code Component}s that are to have the same size
	* @param axis the axis to link the size along; one of
	*             {@code SwingConstants.HORIZONTAL} or
	*             {@code SwingConstans.VERTICAL}
	* @throws IllegalArgumentException if {@code components} is
	*         {@code null}, or contains {@code null}; or {@code axis}
	*          is not {@code SwingConstants.HORIZONTAL} or
	*          {@code SwingConstants.VERTICAL}
	*/
	@:overload @:public public function linkSize(axis : Int, components : java.NativeArray<java.awt.Component>) : Void;
	
	/**
	* Replaces an existing component with a new one.
	*
	* @param existingComponent the component that should be removed
	*        and replaced with {@code newComponent}
	* @param newComponent the component to put in
	*        {@code existingComponent}'s place
	* @throws IllegalArgumentException if either of the components are
	*         {@code null} or {@code existingComponent} is not being managed
	*         by this layout manager
	*/
	@:overload @:public public function replace(existingComponent : java.awt.Component, newComponent : java.awt.Component) : Void;
	
	/**
	* Sets the {@code LayoutStyle} used to calculate the preferred
	* gaps between components. A value of {@code null} indicates the
	* shared instance of {@code LayoutStyle} should be used.
	*
	* @param layoutStyle the {@code LayoutStyle} to use
	* @see LayoutStyle
	*/
	@:overload @:public public function setLayoutStyle(layoutStyle : javax.swing.LayoutStyle) : Void;
	
	/**
	* Returns the {@code LayoutStyle} used for calculating the preferred
	* gap between components. This returns the value specified to
	* {@code setLayoutStyle}, which may be {@code null}.
	*
	* @return the {@code LayoutStyle} used for calculating the preferred
	*         gap between components
	*/
	@:overload @:public public function getLayoutStyle() : javax.swing.LayoutStyle;
	
	/**
	* Notification that a {@code Component} has been added to
	* the parent container.  You should not invoke this method
	* directly, instead you should use one of the {@code Group}
	* methods to add a {@code Component}.
	*
	* @param name the string to be associated with the component
	* @param component the {@code Component} to be added
	*/
	@:overload @:public public function addLayoutComponent(name : String, component : java.awt.Component) : Void;
	
	/**
	* Notification that a {@code Component} has been removed from
	* the parent container.  You should not invoke this method
	* directly, instead invoke {@code remove} on the parent
	* {@code Container}.
	*
	* @param component the component to be removed
	* @see java.awt.Component#remove
	*/
	@:overload @:public public function removeLayoutComponent(component : java.awt.Component) : Void;
	
	/**
	* Returns the preferred size for the specified container.
	*
	* @param parent the container to return the preferred size for
	* @return the preferred size for {@code parent}
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} this was created with
	* @throws IllegalStateException if any of the components added to
	*         this layout are not in both a horizontal and vertical group
	* @see java.awt.Container#getPreferredSize
	*/
	@:overload @:public public function preferredLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the minimum size for the specified container.
	*
	* @param parent the container to return the size for
	* @return the minimum size for {@code parent}
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} that this was created with
	* @throws IllegalStateException if any of the components added to
	*         this layout are not in both a horizontal and vertical group
	* @see java.awt.Container#getMinimumSize
	*/
	@:overload @:public public function minimumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Lays out the specified container.
	*
	* @param parent the container to be laid out
	* @throws IllegalStateException if any of the components added to
	*         this layout are not in both a horizontal and vertical group
	*/
	@:overload @:public public function layoutContainer(parent : java.awt.Container) : Void;
	
	/**
	* Notification that a {@code Component} has been added to
	* the parent container.  You should not invoke this method
	* directly, instead you should use one of the {@code Group}
	* methods to add a {@code Component}.
	*
	* @param component the component added
	* @param constraints description of where to place the component
	*/
	@:overload @:public public function addLayoutComponent(component : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Returns the maximum size for the specified container.
	*
	* @param parent the container to return the size for
	* @return the maximum size for {@code parent}
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} that this was created with
	* @throws IllegalStateException if any of the components added to
	*         this layout are not in both a horizontal and vertical group
	* @see java.awt.Container#getMaximumSize
	*/
	@:overload @:public public function maximumLayoutSize(parent : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*
	* @param parent the {@code Container} hosting this {@code LayoutManager}
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} that this was created with
	* @return the alignment; this implementation returns {@code .5}
	*/
	@:overload @:public public function getLayoutAlignmentX(parent : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*
	* @param parent the {@code Container} hosting this {@code LayoutManager}
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} that this was created with
	* @return alignment; this implementation returns {@code .5}
	*/
	@:overload @:public public function getLayoutAlignmentY(parent : java.awt.Container) : Single;
	
	/**
	* Invalidates the layout, indicating that if the layout manager
	* has cached information it should be discarded.
	*
	* @param parent the {@code Container} hosting this LayoutManager
	* @throws IllegalArgumentException if {@code parent} is not
	*         the same {@code Container} that this was created with
	*/
	@:overload @:public public function invalidateLayout(parent : java.awt.Container) : Void;
	
	/**
	* Returns a string representation of this {@code GroupLayout}.
	* This method is intended to be used for debugging purposes,
	* and the content and format of the returned string may vary
	* between implementations.
	*
	* @return a string representation of this {@code GroupLayout}
	**/
	@:overload @:public public function toString() : String;
	
	
}
/**
* Enumeration of the possible ways {@code ParallelGroup} can align
* its children.
*
* @see #createParallelGroup(Alignment)
* @since 1.6
*/
@:require(java6) @:native('javax$swing$GroupLayout$Alignment') extern enum GroupLayout_Alignment
{
	/**
	* Indicates the elements should be
	* aligned to the origin.  For the horizontal axis with a left to
	* right orientation this means aligned to the left edge. For the
	* vertical axis leading means aligned to the top edge.
	*
	* @see #createParallelGroup(Alignment)
	*/
	LEADING;
	/**
	* Indicates the elements should be aligned to the end of the
	* region.  For the horizontal axis with a left to right
	* orientation this means aligned to the right edge. For the
	* vertical axis trailing means aligned to the bottom edge.
	*
	* @see #createParallelGroup(Alignment)
	*/
	TRAILING;
	/**
	* Indicates the elements should be centered in
	* the region.
	*
	* @see #createParallelGroup(Alignment)
	*/
	CENTER;
	/**
	* Indicates the elements should be aligned along
	* their baseline.
	*
	* @see #createParallelGroup(Alignment)
	* @see #createBaselineGroup(boolean,boolean)
	*/
	BASELINE;
	
}

/**
* Spring consists of a range: min, pref and max, a value some where in
* the middle of that, and a location. Spring caches the
* min/max/pref.  If the min/pref/max has internally changes, or needs
* to be updated you must invoke clear.
*/
@:native('javax$swing$GroupLayout$Spring') @:internal extern class GroupLayout_Spring
{
	
}
/**
* {@code Group} provides the basis for the two types of
* operations supported by {@code GroupLayout}: laying out
* components one after another ({@link SequentialGroup SequentialGroup})
* or aligned ({@link ParallelGroup ParallelGroup}). {@code Group} and
* its subclasses have no public constructor; to create one use
* one of {@code createSequentialGroup} or
* {@code createParallelGroup}. Additionally, taking a {@code Group}
* created from one {@code GroupLayout} and using it with another
* will produce undefined results.
* <p>
* Various methods in {@code Group} and its subclasses allow you
* to explicitly specify the range. The arguments to these methods
* can take two forms, either a value greater than or equal to 0,
* or one of {@code DEFAULT_SIZE} or {@code PREFERRED_SIZE}. A
* value greater than or equal to {@code 0} indicates a specific
* size. {@code DEFAULT_SIZE} indicates the corresponding size
* from the component should be used.  For example, if {@code
* DEFAULT_SIZE} is passed as the minimum size argument, the
* minimum size is obtained from invoking {@code getMinimumSize}
* on the component. Likewise, {@code PREFERRED_SIZE} indicates
* the value from {@code getPreferredSize} should be used.
* The following example adds {@code myComponent} to {@code group}
* with specific values for the range. That is, the minimum is
* explicitly specified as 100, preferred as 200, and maximum as
* 300.
* <pre>
*   group.addComponent(myComponent, 100, 200, 300);
* </pre>
* The following example adds {@code myComponent} to {@code group} using
* a combination of the forms. The minimum size is forced to be the
* same as the preferred size, the preferred size is determined by
* using {@code myComponent.getPreferredSize} and the maximum is
* determined by invoking {@code getMaximumSize} on the component.
* <pre>
*   group.addComponent(myComponent, GroupLayout.PREFERRED_SIZE,
*             GroupLayout.PREFERRED_SIZE, GroupLayout.DEFAULT_SIZE);
* </pre>
* <p>
* Unless otherwise specified all the methods of {@code Group} and
* its subclasses that allow you to specify a range throw an
* {@code IllegalArgumentException} if passed an invalid range. An
* invalid range is one in which any of the values are &lt; 0 and
* not one of {@code PREFERRED_SIZE} or {@code DEFAULT_SIZE}, or
* the following is not met (for specific values): {@code min}
* &lt;= {@code pref} &lt;= {@code max}.
* <p>
* Similarly any methods that take a {@code Component} throw a
* {@code IllegalArgumentException} if passed {@code null} and any methods
* that take a {@code Group} throw an {@code NullPointerException} if
* passed {@code null}.
*
* @see #createSequentialGroup
* @see #createParallelGroup
* @since 1.6
*/
@:require(java6) @:native('javax$swing$GroupLayout$Group') extern class GroupLayout_Group extends javax.swing.GroupLayout.GroupLayout_Spring
{
	/**
	* Adds a {@code Group} to this {@code Group}.
	*
	* @param group the {@code Group} to add
	* @return this {@code Group}
	*/
	@:overload @:public public function addGroup(group : javax.swing.GroupLayout.GroupLayout_Group) : javax.swing.GroupLayout.GroupLayout_Group;
	
	/**
	* Adds a {@code Component} to this {@code Group}.
	*
	* @param component the {@code Component} to add
	* @return this {@code Group}
	*/
	@:overload @:public public function addComponent(component : java.awt.Component) : javax.swing.GroupLayout.GroupLayout_Group;
	
	/**
	* Adds a {@code Component} to this {@code Group}
	* with the specified size.
	*
	* @param component the {@code Component} to add
	* @param min the minimum size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @param pref the preferred size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @param max the maximum size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @return this {@code Group}
	*/
	@:overload @:public public function addComponent(component : java.awt.Component, min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_Group;
	
	/**
	* Adds a rigid gap to this {@code Group}.
	*
	* @param size the size of the gap
	* @return this {@code Group}
	* @throws IllegalArgumentException if {@code size} is less than
	*         {@code 0}
	*/
	@:overload @:public public function addGap(size : Int) : javax.swing.GroupLayout.GroupLayout_Group;
	
	/**
	* Adds a gap to this {@code Group} with the specified size.
	*
	* @param min the minimum size of the gap
	* @param pref the preferred size of the gap
	* @param max the maximum size of the gap
	* @throws IllegalArgumentException if any of the values are
	*         less than {@code 0}
	* @return this {@code Group}
	*/
	@:overload @:public public function addGap(min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_Group;
	
	
}
/**
* A {@code Group} that positions and sizes its elements
* sequentially, one after another.  This class has no public
* constructor, use the {@code createSequentialGroup} method
* to create one.
* <p>
* In order to align a {@code SequentialGroup} along the baseline
* of a baseline aligned {@code ParallelGroup} you need to specify
* which of the elements of the {@code SequentialGroup} is used to
* determine the baseline.  The element used to calculate the
* baseline is specified using one of the {@code add} methods that
* take a {@code boolean}. The last element added with a value of
* {@code true} for {@code useAsBaseline} is used to calculate the
* baseline.
*
* @see #createSequentialGroup
* @since 1.6
*/
@:require(java6) @:native('javax$swing$GroupLayout$SequentialGroup') extern class GroupLayout_SequentialGroup extends javax.swing.GroupLayout.GroupLayout_Group
{
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGroup(group : javax.swing.GroupLayout.GroupLayout_Group) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds a {@code Group} to this {@code Group}.
	*
	* @param group the {@code Group} to add
	* @param useAsBaseline whether the specified {@code Group} should
	*        be used to calculate the baseline for this {@code Group}
	* @return this {@code Group}
	*/
	@:overload @:public public function addGroup(useAsBaseline : Bool, group : javax.swing.GroupLayout.GroupLayout_Group) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addComponent(component : java.awt.Component) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds a {@code Component} to this {@code Group}.
	*
	* @param useAsBaseline whether the specified {@code Component} should
	*        be used to calculate the baseline for this {@code Group}
	* @param component the {@code Component} to add
	* @return this {@code Group}
	*/
	@:overload @:public public function addComponent(useAsBaseline : Bool, component : java.awt.Component) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addComponent(component : java.awt.Component, min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds a {@code Component} to this {@code Group}
	* with the specified size.
	*
	* @param useAsBaseline whether the specified {@code Component} should
	*        be used to calculate the baseline for this {@code Group}
	* @param component the {@code Component} to add
	* @param min the minimum size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @param pref the preferred size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @param max the maximum size or one of {@code DEFAULT_SIZE} or
	*            {@code PREFERRED_SIZE}
	* @return this {@code Group}
	*/
	@:overload @:public public function addComponent(useAsBaseline : Bool, component : java.awt.Component, min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGap(size : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGap(min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between two
	* components. The element created to represent the gap is not
	* resizable.
	*
	* @param comp1 the first component
	* @param comp2 the second component
	* @param type the type of gap; one of the constants defined by
	*        {@code LayoutStyle}
	* @return this {@code SequentialGroup}
	* @throws IllegalArgumentException if {@code type}, {@code comp1} or
	*         {@code comp2} is {@code null}
	* @see LayoutStyle
	*/
	@:overload @:public public function addPreferredGap(comp1 : javax.swing.JComponent, comp2 : javax.swing.JComponent, type : ComponentPlacement) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between two
	* components.
	*
	* @param comp1 the first component
	* @param comp2 the second component
	* @param type the type of gap
	* @param pref the preferred size of the grap; one of
	*        {@code DEFAULT_SIZE} or a value &gt;= 0
	* @param max the maximum size of the gap; one of
	*        {@code DEFAULT_SIZE}, {@code PREFERRED_SIZE}
	*        or a value &gt;= 0
	* @return this {@code SequentialGroup}
	* @throws IllegalArgumentException if {@code type}, {@code comp1} or
	*         {@code comp2} is {@code null}
	* @see LayoutStyle
	*/
	@:overload @:public public function addPreferredGap(comp1 : javax.swing.JComponent, comp2 : javax.swing.JComponent, type : ComponentPlacement, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between the
	* nearest components.  During layout, neighboring
	* components are found, and the size of the added gap is set
	* based on the preferred gap between the components.  If no
	* neighboring components are found the gap has a size of {@code 0}.
	* <p>
	* The element created to represent the gap is not
	* resizable.
	*
	* @param type the type of gap; one of
	*        {@code LayoutStyle.ComponentPlacement.RELATED} or
	*        {@code LayoutStyle.ComponentPlacement.UNRELATED}
	* @return this {@code SequentialGroup}
	* @see LayoutStyle
	* @throws IllegalArgumentException if {@code type} is not one of
	*         {@code LayoutStyle.ComponentPlacement.RELATED} or
	*         {@code LayoutStyle.ComponentPlacement.UNRELATED}
	*/
	@:overload @:public public function addPreferredGap(type : ComponentPlacement) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between the
	* nearest components.  During layout, neighboring
	* components are found, and the minimum of this
	* gap is set based on the size of the preferred gap between the
	* neighboring components.  If no neighboring components are found the
	* minimum size is set to 0.
	*
	* @param type the type of gap; one of
	*        {@code LayoutStyle.ComponentPlacement.RELATED} or
	*        {@code LayoutStyle.ComponentPlacement.UNRELATED}
	* @param pref the preferred size of the grap; one of
	*        {@code DEFAULT_SIZE} or a value &gt;= 0
	* @param max the maximum size of the gap; one of
	*        {@code DEFAULT_SIZE}, {@code PREFERRED_SIZE}
	*        or a value &gt;= 0
	* @return this {@code SequentialGroup}
	* @throws IllegalArgumentException if {@code type} is not one of
	*         {@code LayoutStyle.ComponentPlacement.RELATED} or
	*         {@code LayoutStyle.ComponentPlacement.UNRELATED}
	* @see LayoutStyle
	*/
	@:overload @:public public function addPreferredGap(type : ComponentPlacement, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between an edge
	* the container and components that touch the border of the
	* container. This has no effect if the added gap does not
	* touch an edge of the parent container.
	* <p>
	* The element created to represent the gap is not
	* resizable.
	*
	* @return this {@code SequentialGroup}
	*/
	@:overload @:public public function addContainerGap() : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	/**
	* Adds an element representing the preferred gap between one
	* edge of the container and the next or previous {@code
	* Component} with the specified size. This has no
	* effect if the next or previous element is not a {@code
	* Component} and does not touch one edge of the parent
	* container.
	*
	* @param pref the preferred size; one of {@code DEFAULT_SIZE} or a
	*              value &gt;= 0
	* @param max the maximum size; one of {@code DEFAULT_SIZE},
	*        {@code PREFERRED_SIZE} or a value &gt;= 0
	* @return this {@code SequentialGroup}
	*/
	@:overload @:public public function addContainerGap(pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_SequentialGroup;
	
	
}
/**
* Used by SequentialGroup in calculating resizability of springs.
*/
@:native('javax$swing$GroupLayout$SpringDelta') @:internal extern class GroupLayout_SpringDelta implements java.lang.Comparable<javax.swing.GroupLayout.GroupLayout_SpringDelta>
{
	@:public @:final public var index(default, null) : Int;
	
	@:public public var delta : Int;
	
	@:overload @:public public function new(index : Int, delta : Int) : Void;
	
	@:overload @:public public function compareTo(o : javax.swing.GroupLayout.GroupLayout_SpringDelta) : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* A {@code Group} that aligns and sizes it's children.
* {@code ParallelGroup} aligns it's children in
* four possible ways: along the baseline, centered, anchored to the
* leading edge, or anchored to the trailing edge.
* <h3>Baseline</h3>
* A {@code ParallelGroup} that aligns it's children along the
* baseline must first decide where the baseline is
* anchored. The baseline can either be anchored to the top, or
* anchored to the bottom of the group. That is, the distance between the
* baseline and the beginning of the group can be a constant
* distance, or the distance between the end of the group and the
* baseline can be a constant distance. The possible choices
* correspond to the {@code BaselineResizeBehavior} constants
* {@link
* java.awt.Component.BaselineResizeBehavior#CONSTANT_ASCENT CONSTANT_ASCENT} and
* {@link
* java.awt.Component.BaselineResizeBehavior#CONSTANT_DESCENT CONSTANT_DESCENT}.
* <p>
* The baseline anchor may be explicitly specified by the
* {@code createBaselineGroup} method, or determined based on the elements.
* If not explicitly specified, the baseline will be anchored to
* the bottom if all the elements with a baseline, and that are
* aligned to the baseline, have a baseline resize behavior of
* {@code CONSTANT_DESCENT}; otherwise the baseline is anchored to the top
* of the group.
* <p>
* Elements aligned to the baseline are resizable if they have have
* a baseline resize behavior of {@code CONSTANT_ASCENT} or
* {@code CONSTANT_DESCENT}. Elements with a baseline resize
* behavior of {@code OTHER} or {@code CENTER_OFFSET} are not resizable.
* <p>
* The baseline is calculated based on the preferred height of each
* of the elements that have a baseline. The baseline is
* calculated using the following algorithm:
* {@code max(maxNonBaselineHeight, maxAscent + maxDescent)}, where the
* {@code maxNonBaselineHeight} is the maximum height of all elements
* that do not have a baseline, or are not aligned along the baseline.
* {@code maxAscent} is the maximum ascent (baseline) of all elements that
* have a baseline and are aligned along the baseline.
* {@code maxDescent} is the maximum descent (preferred height - baseline)
* of all elements that have a baseline and are aligned along the baseline.
* <p>
* A {@code ParallelGroup} that aligns it's elements along the baseline
* is only useful along the vertical axis. If you create a
* baseline group and use it along the horizontal axis an
* {@code IllegalStateException} is thrown when you ask
* {@code GroupLayout} for the minimum, preferred or maximum size or
* attempt to layout the components.
* <p>
* Elements that are not aligned to the baseline and smaller than the size
* of the {@code ParallelGroup} are positioned in one of three
* ways: centered, anchored to the leading edge, or anchored to the
* trailing edge.
*
* <h3>Non-baseline {@code ParallelGroup}</h3>
* {@code ParallelGroup}s created with an alignment other than
* {@code BASELINE} align elements that are smaller than the size
* of the group in one of three ways: centered, anchored to the
* leading edge, or anchored to the trailing edge.
* <p>
* The leading edge is based on the axis and {@code
* ComponentOrientation}.  For the vertical axis the top edge is
* always the leading edge, and the bottom edge is always the
* trailing edge. When the {@code ComponentOrientation} is {@code
* LEFT_TO_RIGHT}, the leading edge is the left edge and the
* trailing edge the right edge. A {@code ComponentOrientation} of
* {@code RIGHT_TO_LEFT} flips the left and right edges. Child
* elements are aligned based on the specified alignment the
* element was added with. If you do not specify an alignment, the
* alignment specified for the {@code ParallelGroup} is used.
* <p>
* To align elements along the baseline you {@code createBaselineGroup},
* or {@code createParallelGroup} with an alignment of {@code BASELINE}.
* If the group was not created with a baseline alignment, and you attempt
* to add an element specifying a baseline alignment, an
* {@code IllegalArgumentException} is thrown.
*
* @see #createParallelGroup()
* @see #createBaselineGroup(boolean,boolean)
* @since 1.6
*/
@:require(java6) @:native('javax$swing$GroupLayout$ParallelGroup') extern class GroupLayout_ParallelGroup extends javax.swing.GroupLayout.GroupLayout_Group
{
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGroup(group : javax.swing.GroupLayout.GroupLayout_Group) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addComponent(component : java.awt.Component) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addComponent(component : java.awt.Component, min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGap(pref : Int) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function addGap(min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Adds a {@code Group} to this {@code ParallelGroup} with the
	* specified alignment. If the child is smaller than the
	* {@code Group} it is aligned based on the specified
	* alignment.
	*
	* @param alignment the alignment
	* @param group the {@code Group} to add
	* @return this {@code ParallelGroup}
	* @throws IllegalArgumentException if {@code alignment} is
	*         {@code null}
	*/
	@:overload @:public public function addGroup(alignment : javax.swing.GroupLayout.GroupLayout_Alignment, group : javax.swing.GroupLayout.GroupLayout_Group) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Adds a {@code Component} to this {@code ParallelGroup} with
	* the specified alignment.
	*
	* @param alignment the alignment
	* @param component the {@code Component} to add
	* @return this {@code Group}
	* @throws IllegalArgumentException if {@code alignment} is
	*         {@code null}
	*/
	@:overload @:public public function addComponent(component : java.awt.Component, alignment : javax.swing.GroupLayout.GroupLayout_Alignment) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	/**
	* Adds a {@code Component} to this {@code ParallelGroup} with the
	* specified alignment and size.
	*
	* @param alignment the alignment
	* @param component the {@code Component} to add
	* @param min the minimum size
	* @param pref the preferred size
	* @param max the maximum size
	* @throws IllegalArgumentException if {@code alignment} is
	*         {@code null}
	* @return this {@code Group}
	*/
	@:overload @:public public function addComponent(component : java.awt.Component, alignment : javax.swing.GroupLayout.GroupLayout_Alignment, min : Int, pref : Int, max : Int) : javax.swing.GroupLayout.GroupLayout_ParallelGroup;
	
	
}
/**
* An extension of {@code ParallelGroup} that aligns its
* constituent {@code Spring}s along the baseline.
*/
@:native('javax$swing$GroupLayout$BaselineGroup') @:internal extern class GroupLayout_BaselineGroup extends javax.swing.GroupLayout.GroupLayout_ParallelGroup
{
	
}
@:native('javax$swing$GroupLayout$ComponentSpring') @:internal extern class GroupLayout_ComponentSpring extends javax.swing.GroupLayout.GroupLayout_Spring
{
	
}
/**
* Spring representing the preferred distance between two components.
*/
@:native('javax$swing$GroupLayout$PreferredGapSpring') @:internal extern class GroupLayout_PreferredGapSpring extends javax.swing.GroupLayout.GroupLayout_Spring
{
	
}
/**
* Spring represented a certain amount of space.
*/
@:native('javax$swing$GroupLayout$GapSpring') @:internal extern class GroupLayout_GapSpring extends javax.swing.GroupLayout.GroupLayout_Spring
{
	
}
/**
* Spring reprensenting the distance between any number of sources and
* targets.  The targets and sources are computed during layout.  An
* instance of this can either be dynamically created when
* autocreatePadding is true, or explicitly created by the developer.
*/
@:native('javax$swing$GroupLayout$AutoPreferredGapSpring') @:internal extern class GroupLayout_AutoPreferredGapSpring extends javax.swing.GroupLayout.GroupLayout_Spring
{
	@:overload @:public public function setSource(source : javax.swing.GroupLayout.GroupLayout_ComponentSpring) : Void;
	
	@:overload @:public public function setSources(sources : java.util.List<javax.swing.GroupLayout.GroupLayout_ComponentSpring>) : Void;
	
	@:overload @:public public function setUserCreated(userCreated : Bool) : Void;
	
	@:overload @:public public function getUserCreated() : Bool;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function calculatePadding(axis : Int) : Void;
	
	@:overload @:public public function addTarget(spring : javax.swing.GroupLayout.GroupLayout_ComponentSpring, axis : Int) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* Represents two springs that should have autopadding inserted between
* them.
*/
@:native('javax$swing$GroupLayout$AutoPreferredGapMatch') @:internal extern class GroupLayout_AutoPreferredGapMatch
{
	@:public @:final public var source(default, null) : javax.swing.GroupLayout.GroupLayout_ComponentSpring;
	
	@:public @:final public var target(default, null) : javax.swing.GroupLayout.GroupLayout_ComponentSpring;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* An extension of AutopaddingSpring used for container level padding.
*/
@:native('javax$swing$GroupLayout$ContainerAutoPreferredGapSpring') @:internal extern class GroupLayout_ContainerAutoPreferredGapSpring extends javax.swing.GroupLayout.GroupLayout_AutoPreferredGapSpring
{
	@:overload @:public override public function addTarget(spring : javax.swing.GroupLayout.GroupLayout_ComponentSpring, axis : Int) : Void;
	
	@:overload @:public override public function calculatePadding(axis : Int) : Void;
	
	
}
@:native('javax$swing$GroupLayout$LinkInfo') @:internal extern class GroupLayout_LinkInfo
{
	@:overload @:public public function add(child : javax.swing.GroupLayout.GroupLayout_ComponentInfo) : Void;
	
	@:overload @:public public function remove(info : javax.swing.GroupLayout.GroupLayout_ComponentInfo) : Void;
	
	@:overload @:public public function clearCachedSize() : Void;
	
	@:overload @:public public function getSize(axis : Int) : Int;
	
	
}
/**
* Tracks the horizontal/vertical Springs for a Component.
* This class is also used to handle Springs that have their sizes
* linked.
*/
@:native('javax$swing$GroupLayout$ComponentInfo') @:internal extern class GroupLayout_ComponentInfo
{
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function isVisible() : Bool;
	
	@:overload @:public public function setBounds(insets : java.awt.Insets, parentWidth : Int, ltr : Bool) : Void;
	
	@:overload @:public public function setComponent(component : java.awt.Component) : Void;
	
	@:overload @:public public function getComponent() : java.awt.Component;
	
	/**
	* Returns true if this component has its size linked to
	* other components.
	*/
	@:overload @:public public function isLinked(axis : Int) : Bool;
	
	@:overload @:public public function getLinkInfo(axis : Int) : javax.swing.GroupLayout.GroupLayout_LinkInfo;
	
	@:overload @:public public function clearCachedSize() : Void;
	
	
}
