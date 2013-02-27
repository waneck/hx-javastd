package javax.swing;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class LayoutFocusTraversalPolicy extends javax.swing.SortingFocusTraversalPolicy implements java.io.Serializable
{
	/**
	* Constructs a LayoutFocusTraversalPolicy.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the Component that should receive the focus after aComponent.
	* aContainer must be a focus cycle root of aComponent.
	* <p>
	* By default, LayoutFocusTraversalPolicy implicitly transfers focus down-
	* cycle. That is, during normal focus traversal, the Component
	* traversed after a focus cycle root will be the focus-cycle-root's
	* default Component to focus. This behavior can be disabled using the
	* <code>setImplicitDownCycleTraversal</code> method.
	* <p>
	* If aContainer is <a href="../../java/awt/doc-files/FocusSpec.html#FocusTraversalPolicyProviders">focus
	* traversal policy provider</a>, the focus is always transferred down-cycle.
	*
	* @param aContainer a focus cycle root of aComponent or a focus traversal policy provider
	* @param aComponent a (possibly indirect) child of aContainer, or
	*        aContainer itself
	* @return the Component that should receive the focus after aComponent, or
	*         null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is not a focus cycle
	*         root of aComponent or a focus traversal policy provider, or if either aContainer or
	*         aComponent is null
	*/
	@:overload override public function getComponentAfter(aContainer : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	/**
	* Returns the Component that should receive the focus before aComponent.
	* aContainer must be a focus cycle root of aComponent.
	* <p>
	* By default, LayoutFocusTraversalPolicy implicitly transfers focus down-
	* cycle. That is, during normal focus traversal, the Component
	* traversed after a focus cycle root will be the focus-cycle-root's
	* default Component to focus. This behavior can be disabled using the
	* <code>setImplicitDownCycleTraversal</code> method.
	* <p>
	* If aContainer is <a href="../../java/awt/doc-files/FocusSpec.html#FocusTraversalPolicyProviders">focus
	* traversal policy provider</a>, the focus is always transferred down-cycle.
	*
	* @param aContainer a focus cycle root of aComponent or a focus traversal policy provider
	* @param aComponent a (possibly indirect) child of aContainer, or
	*        aContainer itself
	* @return the Component that should receive the focus before aComponent,
	*         or null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is not a focus cycle
	*         root of aComponent or a focus traversal policy provider, or if either aContainer or
	*         aComponent is null
	*/
	@:overload override public function getComponentBefore(aContainer : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	/**
	* Returns the first Component in the traversal cycle. This method is used
	* to determine the next Component to focus when traversal wraps in the
	* forward direction.
	*
	* @param aContainer a focus cycle root of aComponent or a focus traversal policy provider whose
	*        first Component is to be returned
	* @return the first Component in the traversal cycle of aContainer,
	*         or null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is null
	*/
	@:overload override public function getFirstComponent(aContainer : java.awt.Container) : java.awt.Component;
	
	/**
	* Returns the last Component in the traversal cycle. This method is used
	* to determine the next Component to focus when traversal wraps in the
	* reverse direction.
	*
	* @param aContainer a focus cycle root of aComponent or a focus traversal policy provider whose
	*        last Component is to be returned
	* @return the last Component in the traversal cycle of aContainer,
	*         or null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is null
	*/
	@:overload override public function getLastComponent(aContainer : java.awt.Container) : java.awt.Component;
	
	/**
	* Determines whether the specified <code>Component</code>
	* is an acceptable choice as the new focus owner.
	* This method performs the following sequence of operations:
	* <ol>
	* <li>Checks whether <code>aComponent</code> is visible, displayable,
	*     enabled, and focusable.  If any of these properties is
	*     <code>false</code>, this method returns <code>false</code>.
	* <li>If <code>aComponent</code> is an instance of <code>JTable</code>,
	*     returns <code>true</code>.
	* <li>If <code>aComponent</code> is an instance of <code>JComboBox</code>,
	*     then returns the value of
	*     <code>aComponent.getUI().isFocusTraversable(aComponent)</code>.
	* <li>If <code>aComponent</code> is a <code>JComponent</code>
	*     with a <code>JComponent.WHEN_FOCUSED</code>
	*     <code>InputMap</code> that is neither <code>null</code>
	*     nor empty, returns <code>true</code>.
	* <li>Returns the value of
	*     <code>DefaultFocusTraversalPolicy.accept(aComponent)</code>.
	* </ol>
	*
	* @param aComponent the <code>Component</code> whose fitness
	*                   as a focus owner is to be tested
	* @see java.awt.Component#isVisible
	* @see java.awt.Component#isDisplayable
	* @see java.awt.Component#isEnabled
	* @see java.awt.Component#isFocusable
	* @see javax.swing.plaf.ComboBoxUI#isFocusTraversable
	* @see javax.swing.JComponent#getInputMap
	* @see java.awt.DefaultFocusTraversalPolicy#accept
	* @return <code>true</code> if <code>aComponent</code> is a valid choice
	*         for a focus owner;
	*         otherwise <code>false</code>
	*/
	@:overload override private function accept(aComponent : java.awt.Component) : Bool;
	
	
}
@:internal extern class SwingDefaultFocusTraversalPolicy extends java.awt.DefaultFocusTraversalPolicy
{
	@:overload override public function accept(aComponent : java.awt.Component) : Bool;
	
	
}
