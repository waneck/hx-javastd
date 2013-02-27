package javax.swing.text.html;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* EditableView sets the view it contains to be visible only when the
* JTextComponent the view is contained in is editable. The min/pref/max
* size is 0 when not visible.
*
* @author  Scott Violet
*/
@:internal extern class EditableView extends javax.swing.text.ComponentView
{
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* @return true if the Component is visible.
	*/
	@:overload override public function isVisible() : Bool;
	
	
}
