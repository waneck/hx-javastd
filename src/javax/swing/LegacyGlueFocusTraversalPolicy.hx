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
/**
* A FocusTraversalPolicy which provides support for legacy applications which
* handle focus traversal via JComponent.setNextFocusableComponent or by
* installing a custom DefaultFocusManager. If a specific traversal has not
* been hard coded, then that traversal is provided either by the custom
* DefaultFocusManager, or by a wrapped FocusTraversalPolicy instance.
*
* @author David Mendenhall
*/
@:internal extern class LegacyGlueFocusTraversalPolicy extends java.awt.FocusTraversalPolicy implements java.io.Serializable
{
	@:overload @:public override public function getComponentAfter(focusCycleRoot : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	@:overload @:public override public function getComponentBefore(focusCycleRoot : java.awt.Container, aComponent : java.awt.Component) : java.awt.Component;
	
	@:overload @:public override public function getFirstComponent(focusCycleRoot : java.awt.Container) : java.awt.Component;
	
	@:overload @:public override public function getLastComponent(focusCycleRoot : java.awt.Container) : java.awt.Component;
	
	@:overload @:public override public function getDefaultComponent(focusCycleRoot : java.awt.Container) : java.awt.Component;
	
	
}
