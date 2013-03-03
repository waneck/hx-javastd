package java.awt;
/*
* Copyright (c) 2000, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultFocusTraversalPolicy extends java.awt.ContainerOrderFocusTraversalPolicy
{
	/**
	* Determines whether a Component is an acceptable choice as the new
	* focus owner. The Component must be visible, displayable, and enabled
	* to be accepted. If client code has explicitly set the focusability
	* of the Component by either overriding
	* <code>Component.isFocusTraversable()</code> or
	* <code>Component.isFocusable()</code>, or by calling
	* <code>Component.setFocusable()</code>, then the Component will be
	* accepted if and only if it is focusable. If, however, the Component is
	* relying on default focusability, then all Canvases, Labels, Panels,
	* Scrollbars, ScrollPanes, Windows, and lightweight Components will be
	* rejected.
	*
	* @param aComponent the Component whose fitness as a focus owner is to
	*        be tested
	* @return <code>true</code> if aComponent meets the above requirements;
	*         <code>false</code> otherwise
	*/
	@:overload @:protected override private function accept(aComponent : java.awt.Component) : Bool;
	
	
}
