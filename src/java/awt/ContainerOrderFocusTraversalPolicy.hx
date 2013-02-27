package java.awt;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ContainerOrderFocusTraversalPolicy extends java.awt.FocusTraversalPolicy implements java.io.Serializable
{
	/**
	* Returns the Component that should receive the focus after aComponent.
	* aContainer must be a focus cycle root of aComponent or a focus traversal policy provider.
	* <p>
	* By default, ContainerOrderFocusTraversalPolicy implicitly transfers
	* focus down-cycle. That is, during normal forward focus traversal, the
	* Component traversed after a focus cycle root will be the focus-cycle-
	* root's default Component to focus. This behavior can be disabled using
	* the <code>setImplicitDownCycleTraversal</code> method.
	* <p>
	* If aContainer is <a href="doc-files/FocusSpec.html#FocusTraversalPolicyProviders">focus
	* traversal policy provider</a>, the focus is always transferred down-cycle.
	*
	* @param aContainer a focus cycle root of aComponent or a focus traversal policy provider
	* @param aComponent a (possibly indirect) child of aContainer, or
	*        aContainer itself
	* @return the Component that should receive the focus after aComponent, or
	*         null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is not a focus cycle
	*         root of aComponent or focus traversal policy provider, or if either aContainer or
	*         aComponent is null
	*/
	@:overload override public function getComponentAfter(aContainer : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	/**
	* Returns the Component that should receive the focus before aComponent.
	* aContainer must be a focus cycle root of aComponent or a <a
	* href="doc-files/FocusSpec.html#FocusTraversalPolicyProviders">focus traversal policy
	* provider</a>.
	*
	* @param aContainer a focus cycle root of aComponent or focus traversal policy provider
	* @param aComponent a (possibly indirect) child of aContainer, or
	*        aContainer itself
	* @return the Component that should receive the focus before aComponent,
	*         or null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is not a focus cycle
	*         root of aComponent or focus traversal policy provider, or if either aContainer or
	*         aComponent is null
	*/
	@:overload override public function getComponentBefore(aContainer : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	/**
	* Returns the first Component in the traversal cycle. This method is used
	* to determine the next Component to focus when traversal wraps in the
	* forward direction.
	*
	* @param aContainer the focus cycle root or focus traversal policy provider whose first
	*        Component is to be returned
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
	* @param aContainer the focus cycle root or focus traversal policy provider whose last
	*        Component is to be returned
	* @return the last Component in the traversal cycle of aContainer,
	*         or null if no suitable Component can be found
	* @throws IllegalArgumentException if aContainer is null
	*/
	@:overload override public function getLastComponent(aContainer : java.awt.Container) : java.awt.Component;
	
	/**
	* Returns the default Component to focus. This Component will be the first
	* to receive focus when traversing down into a new focus traversal cycle
	* rooted at aContainer. The default implementation of this method
	* returns the same Component as <code>getFirstComponent</code>.
	*
	* @param aContainer the focus cycle root or focus traversal policy provider whose default
	*        Component is to be returned
	* @return the default Component in the traversal cycle of aContainer,
	*         or null if no suitable Component can be found
	* @see #getFirstComponent
	* @throws IllegalArgumentException if aContainer is null
	*/
	@:overload override public function getDefaultComponent(aContainer : java.awt.Container) : java.awt.Component;
	
	/**
	* Sets whether this ContainerOrderFocusTraversalPolicy transfers focus
	* down-cycle implicitly. If <code>true</code>, during normal forward focus
	* traversal, the Component traversed after a focus cycle root will be the
	* focus-cycle-root's default Component to focus. If <code>false</code>,
	* the next Component in the focus traversal cycle rooted at the specified
	* focus cycle root will be traversed instead. The default value for this
	* property is <code>true</code>.
	*
	* @param implicitDownCycleTraversal whether this
	*        ContainerOrderFocusTraversalPolicy transfers focus down-cycle
	*        implicitly
	* @see #getImplicitDownCycleTraversal
	* @see #getFirstComponent
	*/
	@:overload public function setImplicitDownCycleTraversal(implicitDownCycleTraversal : Bool) : Void;
	
	/**
	* Returns whether this ContainerOrderFocusTraversalPolicy transfers focus
	* down-cycle implicitly. If <code>true</code>, during normal forward focus
	* traversal, the Component traversed after a focus cycle root will be the
	* focus-cycle-root's default Component to focus. If <code>false</code>,
	* the next Component in the focus traversal cycle rooted at the specified
	* focus cycle root will be traversed instead.
	*
	* @return whether this ContainerOrderFocusTraversalPolicy transfers focus
	*         down-cycle implicitly
	* @see #setImplicitDownCycleTraversal
	* @see #getFirstComponent
	*/
	@:overload public function getImplicitDownCycleTraversal() : Bool;
	
	/**
	* Determines whether a Component is an acceptable choice as the new
	* focus owner. By default, this method will accept a Component if and
	* only if it is visible, displayable, enabled, and focusable.
	*
	* @param aComponent the Component whose fitness as a focus owner is to
	*        be tested
	* @return <code>true</code> if aComponent is visible, displayable,
	*         enabled, and focusable; <code>false</code> otherwise
	*/
	@:overload private function accept(aComponent : java.awt.Component) : Bool;
	
	
}
